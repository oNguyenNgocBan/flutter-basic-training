import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:lession_1/constants.dart';

import 'components/authen_header.dart';
import 'components/login_social_button.dart';

const registerRoutes = "/register";

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFfe7b43), Color(0xFFf6356e)],
            stops: [0, 1],
            begin: AlignmentDirectional(0, -1),
            end: AlignmentDirectional(0, 1),
          ),
        ),
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height - 80,
                child: SingleChildScrollView(
                  child: Container(
                    child: _bodyContainer(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bodyContainer(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AuthenHeader(),
        SizedBox(
          height: 20,
        ),
        _iconButton(context),
        _alreadyRegisterdButton(context),
      ],
    );
  }

  Widget _iconButton(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Wrap(
        runSpacing: 20,
        children: [
          LoginSocialButton(
            text: RegisterScreenText.signInFacebook,
            image: ImageAsset.facebookOrange,
          ),
          LoginSocialButton(
            text: RegisterScreenText.signInTwitter,
            image: ImageAsset.facebookOrange,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: TextButton(
              onPressed: () {},
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                child: Text(LogInScreenText.signUp,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _alreadyRegisterdButton(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          RegisterScreenText.alreadySignIn,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              color: Colors.white),
        ));
  }
}
