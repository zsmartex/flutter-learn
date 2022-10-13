import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Wallet page'),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Vao login ne!'),
          onPressed: () {
            context.push('/login');
          }
        ),
      ),
    );
  }
}
