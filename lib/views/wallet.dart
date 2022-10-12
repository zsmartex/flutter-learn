import 'package:flutter/cupertino.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Wallet page'),
      ),
      child: Text('Wallet page'),
    );
  }
}
