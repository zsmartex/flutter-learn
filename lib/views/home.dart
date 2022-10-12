import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:app/screens/market.dart';

class HomePage extends StatefulWidget {
  @override
 _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> with SingleTickerProviderStateMixin{
  late AnimationController controller;
  late Animation colorAnimation;
  late Animation sizeAnimation;

  @override
  void initState() {
    super.initState();
    controller =  AnimationController(vsync: this, duration: const Duration(seconds: 2));
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.yellow).animate(controller);
    sizeAnimation = Tween<double>(begin: 100.0, end: 200.0).animate(controller);
  }
  Widget build(BuildContext context) {
    return CupertinoPageTransition(
      linearTransition: true,
      primaryRouteAnimation: AnimationController(vsync: this, duration: const Duration(seconds: 2)),
      secondaryRouteAnimation: AnimationController(vsync: this, duration: const Duration(seconds: 2)),
      child: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('HOME'),
        ),
        child: Center(
          child: CupertinoButton(
            child: const Text('bam vao day de xem phim heo'),
            onPressed: () {
              Navigator.of(context, rootNavigator: true).push(CupertinoPageRoute<Widget>(
                  builder: (BuildContext context) {
                return const MarketScreen();
              }));
            },
          )
        ),
      )
    );
  }
}
