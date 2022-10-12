import 'package:flutter/cupertino.dart';
import 'package:app/views/home.dart';
import 'package:app/views/markets.dart';
import 'package:app/views/trade.dart';
import 'package:app/views/wallet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.star_fill),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.clock_solid),
              label: 'Markets',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_alt_circle_fill),
              label: 'Trade',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.circle_grid_3x3_fill),
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
