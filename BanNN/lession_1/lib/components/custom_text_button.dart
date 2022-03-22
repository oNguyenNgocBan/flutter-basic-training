import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    this.text = '',
    this.press,
  }) : super(key: key);

  final String text;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(65))
      ),
      child: TextButton(
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size.copy(Size(280, 65)))),
        onPressed: () {},
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              foreground: Paint()
                ..shader = const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.1, 0.4, 0.7, 0.1],
                  colors: [
                    Colors.red,
                    Colors.redAccent,
                    Colors.deepOrange,
                    Colors.deepOrangeAccent,
                  ],
                ).createShader(Rect.fromLTRB(0, 0, 0, 0))),
        ),
      ),
    );
  }
}
