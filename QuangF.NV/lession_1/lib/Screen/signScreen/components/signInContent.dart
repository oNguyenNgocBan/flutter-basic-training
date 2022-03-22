import 'package:flutter/material.dart';
import 'package:new_flutter/Screen/signScreen/components/signForm.dart';
import 'package:new_flutter/constant.dart';

double _heightSizedBox = 20;

class SignInContent extends StatelessWidget {
  const SignInContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          StringRes.signIn,
          style: TextStyle(
            fontSize: bodyFontSize,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: _heightSizedBox,
        ),
        Column(
          children: [
            SignForm(),
            SizedBox(
              height: _heightSizedBox,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Checkbox(
                  value: true,
                  onChanged: null,
                  checkColor: Colors.limeAccent,
                ),
                Text(StringRes.note)
              ],
            )
          ],
        ),
      ],
    );
  }
}
