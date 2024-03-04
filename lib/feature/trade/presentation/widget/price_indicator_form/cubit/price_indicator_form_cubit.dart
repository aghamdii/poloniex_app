import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/trade/domain/model/price_difference_status.dart';

part 'price_indicator_form_state.dart';
part 'price_indicator_form_cubit.freezed.dart';

@inject
class PriceIndicatorFormCubit extends Cubit<PriceIndicatorFormState> {
  PriceIndicatorFormCubit() : super(PriceIndicatorFormState());
}
