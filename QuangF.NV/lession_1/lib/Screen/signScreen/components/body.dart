import 'package:flutter/material.dart';
import 'package:new_flutter/Screen/signScreen/components/topContent.dart';
import 'package:new_flutter/Screen/signScreen/components/signInContent.dart';
import 'package:new_flutter/Screen/signScreen/components/buttonContent.dart';
import 'package:new_flutter/Screen/signScreen/components/signUp.dart';
import 'package:new_flutter/constant.dart';

double _allPadding = 40;
double _heightSizedBox = 30;

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [persimmon, radicalRed],
          ),
        ),
        child: SizedBox.expand(
          child: SingleChildScrollView(
            // child: SafeArea(
            child: SizedBox(
              height: height,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(_allPadding),
                    child: Column(
                      children: [
                        TopContent(),
                        SizedBox(height: _heightSizedBox),
                        SignInContent(),
                        SizedBox(height: _heightSizedBox),
                        ButtonContent(),
                      ],
                    ),
                  ),
                  Spacer(),
                  SignUp(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
