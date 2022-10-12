import 'package:flutter/cupertino.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('New page'),
      ),
      child: CupertinoButton(
        child: Text("An vao day de quay lai"),
        onPressed: () {
          Navigator.pop(context);
        },    
      ),
    );
  }
}
