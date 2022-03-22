import 'package:flutter/material.dart';
import 'package:new_flutter/Screen/signScreen/components/body.dart';

const signInRoutes = '/signIn';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
