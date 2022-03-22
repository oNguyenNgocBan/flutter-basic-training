import 'package:flutter/material.dart';
import 'package:new_flutter/Screen/signUpScreen/components/body.dart';

const signUpRoutes = '/signUp';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
