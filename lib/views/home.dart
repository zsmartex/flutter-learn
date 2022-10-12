import 'package:flutter/cupertino.dart';
import 'package:app/screens/market.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('HOME'),
        ),
        child: Center(
          child: CupertinoButton(
            child: const Text('bam vao day de xem phim heo'),
            onPressed: () {
              Navigator.of(context, rootNavigator: true).push(
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const MarketScreen(),
                  transitionDuration: const Duration(milliseconds: 200),
                  transitionsBuilder: (_, a, __, c) => SlideTransition(
                    position: Tween(
                        begin: Offset(1.0, 0.0),
                        end: Offset(0.0, 0.0))
                    .animate(a),
                    child: c,
                  ),
                )
              );
            },
          )
        ),
      )
    );
  }
}

// CupertinoPageRoute<Widget>(
//                   builder: (BuildContext context) {
//                 return const MarketScreen();
//               })
