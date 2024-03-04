import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/auth/domain/use_case/clear_user_session_use_case.dart';
import 'package:poloniex_app/feature/trade/domain/model/crypto_price_point_response.dart';
import 'package:poloniex_app/feature/trade/domain/model/price_difference_status.dart';
import 'package:poloniex_app/feature/trade/domain/use_case/close_crypto_web_socket_use_case.dart';
import 'package:poloniex_app/feature/trade/domain/use_case/get_crypto_price_stream_use_case.dart';
import 'package:poloniex_app/feature/trade/domain/use_case/get_crypto_web_socket_token_use_case.dart';
import 'package:poloniex_app/feature/trade/domain/use_case/open_crypto_web_socket_use_case.dart';
import 'package:poloniex_app/feature/trade/domain/use_case/ping_crypto_web_socket_use_case.dart';

part 'trade_highlight_state.dart';
part 'trade_highlight_cubit.freezed.dart';

@inject
class TradeHighlightCubit extends Cubit<TradeHighlightState> {
  TradeHighlightCubit(
    this._clearUserSessionUseCase,
    this._openCryptoWebSocketUseCase,
    this._closeCryptoWebSocketUseCase,
    this._getCryptoPriceStreamUseCase,
    this._pingCryptoWebSocketUseCase,
    this._getCryptoWebSocketTokenUseCase,
  ) : super(
          TradeHighlightState(),
        );

  final ClearUserSessionUseCase _clearUserSessionUseCase;
  final OpenCryptoWebSocketUseCase _openCryptoWebSocketUseCase;
  final CloseCryptoWebSocketUseCase _closeCryptoWebSocketUseCase;
  final GetCryptoPriceStreamUseCase _getCryptoPriceStreamUseCase;
  final PingCryptoWebSocketUseCase _pingCryptoWebSocketUseCase;
  final GetCryptoWebSocketTokenUseCase _getCryptoWebSocketTokenUseCase;

  StreamSubscription<CryptoPricePoint>? _cryptoPriceStreamController;

  Future<void> init() async {
    final webSocketToken = await _getCryptoWebSocketTokenUseCase();
    await _openCryptoWebSocketUseCase(
      webSocketToken.data.token,
    );
    await Future.delayed(Duration(seconds: 1));
    _observeCryptoPriceStream();
  }

  void _observeCryptoPriceStream() {
    try {
      _cryptoPriceStreamController =
          _getCryptoPriceStreamUseCase().listen((pricePoint) {
        _pingCryptoWebSocketUseCase('1545910660740');
        final newList = List<CryptoPricePoint>.from(
          state.cryptoPricePoints,
        );
        newList.add(pricePoint);
        if (state.userInput != 0) {
          changePrice(state.userInput.toString(), newList.last.price);
        }
        emit(
          state.copyWith(
            cryptoPricePoints: newList,
            selectedCryptoPricePoint: newList.last,
          ),
        );
      });
    } catch (e) {
      print('Error is ${e.toString()}');
    }
  }

  Future<void> logoutTapped() => _clearUserSessionUseCase();

  Future<void> closeCryptoWebSocket() async {
    _cryptoPriceStreamController?.cancel();
    await _closeCryptoWebSocketUseCase();
  }

  bool isGraphGaining() {
    if (state.cryptoPricePoints.length > 1) {
      final firstValue = state.cryptoPricePoints.first.price;
      final lastValue = state.cryptoPricePoints.last.price;
      return (lastValue > firstValue);
    }
    return true;
  }

  void changeSelectedCryptoPricePoint(CryptoPricePoint? cryptoPricePoint) {
    if (cryptoPricePoint != null) {
      emit(state.copyWith(selectedCryptoPricePoint: cryptoPricePoint));
    } else if (cryptoPricePoint == null && state.cryptoPricePoints.isNotEmpty) {
      emit(state.copyWith(
          selectedCryptoPricePoint: state.cryptoPricePoints.last));
    } else {
      emit(
        state.copyWith(selectedCryptoPricePoint: null),
      );
    }
  }

  void changePrice(String? price, double latestPrice) {
    if (price != null && double.tryParse(price) != null) {
      if (double.parse(price) == 0) {
        emit(
          state.copyWith(
            difference: 0,
            priceDifferenceStatus: PriceDifferenceStatus.neutral,
          ),
        );
      }
      final difference = latestPrice - double.parse(price);
      final priceDifferenceStatus = _getPriceDifferenceStatus(difference);
      emit(
        state.copyWith(
          difference: difference,
          priceDifferenceStatus: priceDifferenceStatus,
          userInput: double.parse(price),
        ),
      );
    } else {
      emit(
        state.copyWith(
          priceDifferenceStatus: PriceDifferenceStatus.neutral,
          difference: 0.00,
          userInput: 0.00,
        ),
      );
    }
  }

  PriceDifferenceStatus _getPriceDifferenceStatus(double difference) {
    if (difference > 0) {
      return PriceDifferenceStatus.gain;
    } else if (difference == 0) {
      return PriceDifferenceStatus.neutral;
    } else {
      return PriceDifferenceStatus.loss;
    }
  }
}
