import 'package:flutter/material.dart';
import 'package:new_flutter/Screen/signUpScreen/signUpScreen.dart';
import 'package:new_flutter/constant.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.black26,
      child: SizedBox.expand(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                StringRes.notHaveAcc,
                style: TextStyle(
                  color: Colors.yellow,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, signUpRoutes);
                },
                child: Text(
                  StringRes.signIn,
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              // Navigator.pushNamed(context, SignUpScreen.routeName);
            ],
          ),
        ),
      ),
    );
  }
}
