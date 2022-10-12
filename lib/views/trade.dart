import 'package:flutter/cupertino.dart';

class TradePage extends StatelessWidget {
  const TradePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Trade page'),
      ),
      child: Text('Trade page'),
    );
  }
}
