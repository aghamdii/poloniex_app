import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:poloniex_app/core/presentation/extensions/theme_extension.dart';
import 'package:poloniex_app/feature/auth/presentation/login/login_page.dart';
import 'package:poloniex_app/feature/trade/presentation/trade_highlight/cubit/trade_highlight_cubit.dart';
import 'package:poloniex_app/feature/trade/presentation/widget/crypto_price_container.dart';
import 'package:poloniex_app/feature/trade/presentation/widget/price_indicator_form/price_indicator_form.dart';

class TradeHighlightPage extends HookWidget {
  const TradeHighlightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    final cubit = useBloc<TradeHighlightCubit>();
    final state = useBlocBuilder(cubit);

    useEffect(
      () {
        cubit.init();
        // Dipose WS
        return cubit.closeCryptoWebSocket;
      },
      [cubit],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () => _onLogoutTapped(context, cubit),
            icon: Icon(
              Icons.logout,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'BTC Price',
                    style: theme.textTheme.labelLarge?.copyWith(
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    state.selectedCryptoPricePoint?.price.toString() ??
                        'Loading',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontSize: 28,
                    ),
                  ),
                ]),
          ),
          CryptoPriceContainer(
            cryptoPricePoints: state.cryptoPricePoints,
            isGaining: cubit.isGraphGaining(),
            onDragUpdated: (index) {
              if (index != -1) {
                cubit.changeSelectedCryptoPricePoint(
                  state.cryptoPricePoints[index],
                );
              } else {
                cubit.changeSelectedCryptoPricePoint(null);
              }
            },
          ),
          const SizedBox(
            height: 80.0,
          ),
          state.cryptoPricePoints.isNotEmpty
              ? PriceIndicatorForm(
                  difference: state.difference,
                  priceDifferenceStatus: state.priceDifferenceStatus,
                  onChanged: (text) => cubit.changePrice(
                    text,
                    state.cryptoPricePoints.last.price,
                  ),
                )
              : CircularProgressIndicator(),
        ],
      ),
    );
  }

  void _onLogoutTapped(
    BuildContext context,
    TradeHighlightCubit cubit,
  ) {
    cubit.logoutTapped();
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
      (route) => false,
    );
  }
}
