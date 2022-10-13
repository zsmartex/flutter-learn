import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Market page'),
      ),
      child: Center(
        child: CupertinoButton(
          child: Text('An vao day de quay lai'),
          onPressed: () {
            context.pop();
          },    
        ),
      ),
    );
  }
}
