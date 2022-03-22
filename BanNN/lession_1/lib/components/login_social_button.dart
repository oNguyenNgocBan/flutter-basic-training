import 'package:flutter/material.dart';

class LoginSocialButton extends StatelessWidget {
  const LoginSocialButton({
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
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50))
      ),
      // color: Colors.white,
      child: TextButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
          child: Row(
            children: [
              SizedBox(child: Image.asset(image), width: 30, height: 30,),
              Container(
                  height: 30, child: VerticalDivider(color: Colors.red)),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
