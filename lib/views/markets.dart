import 'package:flutter/cupertino.dart';

class MarketsPage extends StatelessWidget {
  const MarketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Markets page'),
      ),
      child: Text('Markets page'),
    );
  }
}
