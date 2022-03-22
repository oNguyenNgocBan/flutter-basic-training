import 'package:flutter/material.dart';
import 'package:new_flutter/components/customGradientText.dart';
import 'package:new_flutter/constant.dart';

class SignInWithButton extends StatelessWidget {
  const SignInWithButton({
    Key? key,
    this.text = '',
    this.image = '',
    this.press,
  }) : super(key: key);

  final String text;
  final String image;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    double _sizeImage = 38;
    double _sizeSizedBox = 10;
    double _heightContainer = 35;
    double _widthContainer = 2;
    return SizedBox(
      width: double.infinity,
      height: heightButton,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusButton),
        ),
        color: Colors.white,
        onPressed: press,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              image,
              height: _sizeImage,
              width: _sizeImage,
            ),
            SizedBox(width: _sizeSizedBox),
            Container(
              height: _heightContainer,
              width: _widthContainer,
              color: Colors.red.shade200,
            ),
            SizedBox(width: _sizeSizedBox),
            GradientText(text),
          ],
        ),
      ),
    );
  }
}
