import 'package:flutter/cupertino.dart';
import 'package:app/views/home.dart';
import 'package:app/views/markets.dart';
import 'package:app/views/trade.dart';
import 'package:app/views/wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/home.svg"),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/chart-line-up.svg"),
              label: 'Markets',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/arrows-repeat.svg"),
              label: 'Trade',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/wallet.svg"),
              label: 'Wallet',
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return index == 0 ? HomePage() : index == 1 ? const MarketsPage() : index == 2 ? const TradePage() : const WalletPage();
            },
          );
        },
      ),
    );
  }
}
