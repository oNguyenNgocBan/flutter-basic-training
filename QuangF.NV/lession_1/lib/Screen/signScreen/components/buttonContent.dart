import 'package:flutter/material.dart';
import 'package:new_flutter/components/defaultButton.dart';
import 'package:new_flutter/constant.dart';

double _sizeImage = 60;
double _sizeSizedBox = 30;

class ButtonContent extends StatelessWidget {
  const ButtonContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          text: StringRes.getStarted,
          press: () {},
        ),
        SizedBox(height: _sizeSizedBox),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/facebook.png',
              height: _sizeImage,
              width: _sizeImage,
            ),
            SizedBox(width: _sizeSizedBox),
            Image.asset(
              'assets/icons/twitter.png',
              height: _sizeImage,
              width: _sizeImage,
            )
          ],
        ),
        SizedBox(height: _sizeSizedBox),
        Text(
          StringRes.forgotPwd,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            decoration: TextDecoration.underline,
          ),
        )
      ],
    );
  }
}
