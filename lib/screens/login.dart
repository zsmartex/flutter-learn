import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Login page'),
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
