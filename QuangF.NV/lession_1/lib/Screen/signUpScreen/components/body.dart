import 'package:flutter/material.dart';
import 'package:new_flutter/Screen/signScreen/components/topContent.dart';
import 'package:new_flutter/Screen/signScreen/signInScreen.dart';
import 'package:new_flutter/components/defaultButton.dart';
import 'package:new_flutter/components/signInWithButton.dart';
import 'package:new_flutter/constant.dart';

double _heightSizedBox = 30;
double _padding = 40;
double _topContentPadding = 100;

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              persimmon,
              radicalRed,
            ],
          ),
        ),
        child: SizedBox.expand(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(_padding),
                child: Column(
                  children: [
                    TopContent(),
                    SizedBox(height: _topContentPadding),
                    SignInWithButton(
                      text: StringRes.signWFB,
                      image: 'assets/icons/facebook.png',
                      press: () {},
                    ),
                    SizedBox(height: _heightSizedBox),
                    SignInWithButton(
                      text: StringRes.signWT,
                      image: 'assets/icons/twitter.png',
                      press: () {},
                    ),
                    SizedBox(height: _heightSizedBox),
                    DefaultButton(
                      text: StringRes.hintSignUp,
                      press: () {},
                    ),
                    SizedBox(height: _heightSizedBox),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, signInRoutes);
                      },
                      child: Text(
                        StringRes.hintSignInt,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
