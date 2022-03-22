import 'package:flutter/material.dart';
import 'package:new_flutter/constant.dart';

double _sizeImage = 100;

class TopContent extends StatelessWidget {
  const TopContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/icons/russia.png',
              height: _sizeImage,
              width: _sizeImage,
            ),
            const SizedBox(width: 50),
            Image.asset(
              'assets/icons/ukraine.png',
              height: _sizeImage,
              width: _sizeImage,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(width: 20),
            Text(
              StringRes.russia,
              style: TextStyle(
                fontSize: bodyFontSize,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '-',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              StringRes.ukraine,
              style: TextStyle(
                fontSize: bodyFontSize,
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          StringRes.topContent,
          style: TextStyle(
            fontSize: smallFontSize,
            fontWeight: FontWeight.w300,
            letterSpacing: smallFontLetterSpacing,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
