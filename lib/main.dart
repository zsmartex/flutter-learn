import 'package:flutter/cupertino.dart';
import 'package:app/screens/home.dart';
import 'package:app/screens/market.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const HomeScreen(),
        'market': (_) => const MarketScreen(),
      },
    );
  }
}
