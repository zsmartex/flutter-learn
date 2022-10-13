import 'package:app/screens/home.dart';
import 'package:app/screens/login.dart';
import 'package:app/screens/market.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Example',
      debugShowCheckedModeBanner: false,
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const HomeScreen()
      ),
      GoRoute(
        path: '/market',
        builder: (BuildContext context, GoRouterState state) => const MarketScreen(),
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const MarketScreen(),
          transitionsBuilder: (_, a, __, c) => SlideTransition(
            position: Tween(
                begin: const Offset(1.0, 0.0),
                end: const Offset(0.0, 0.0))
            .animate(a),
            child: c,
          ),
        )
      ),
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) => const LoginScreen(),
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const LoginScreen(),
          transitionsBuilder: (_, a, __, c) { 
            var begin = Offset(0.0, 1.0);
            var end = Offset.zero;
            var tween = Tween(begin: begin, end: end);
            var offsetAnimation = a.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: c,
            );
          },
        )
      ),
    ]
  );
}
