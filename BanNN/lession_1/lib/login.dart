import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lession_1/register.dart';
import 'package:lession_1/constants.dart';
import 'package:lession_1/components/authen_header.dart';

import 'components/custom_text_button.dart';

const loginRoutes = "/login";

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              _bottomContainer(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomContainer(BuildContext context) {
    return Container(
        color: Colors.black12.withOpacity(0.3),
        alignment: Alignment.center,
        height: 80,
        child: Text.rich(
          TextSpan(
            text: LogInScreenText.dontHaveAccount,
            style: const TextStyle(color: Colors.redAccent, fontSize: 14),
            children: <TextSpan>[
              TextSpan(
                text: LogInScreenText.signUp,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    decoration: TextDecoration.underline),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, registerRoutes);
                  },
              ),
            ],
          ),
        ));
  }

  Widget _bodyContainer(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AuthenHeader(),
        _inputContainer(context, true),
        SizedBox(
          height: 40,
        ),
        _inputContainer(context, false),
        _checkBoxContainer(context, false),
        _getStart(context),
        _iconButton(context),
        _forgotButton(context),
      ],
    );
  }

  Widget _inputContainer(BuildContext context, bool inputEmail) {
    return SizedBox(
      width: 300,
      height: 60,
      child: TextField(
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white),
        keyboardType: inputEmail
            ? TextInputType.emailAddress
            : TextInputType.visiblePassword,
        obscureText: inputEmail ? false : true,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder()
              .copyWith(borderSide: BorderSide(color: Colors.white)),
          focusedBorder: UnderlineInputBorder()
              .copyWith(borderSide: BorderSide(color: Colors.white)),
          label: Text(inputEmail ? LogInScreenText.enterEmail : LogInScreenText.enterPassword),
          labelStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _checkBoxContainer(BuildContext context, bool didCheck) {
    return SizedBox(
      width: 300,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
            value: true,
            checkColor: Colors.white, // color of tick Mark
            activeColor: Colors.yellow,
            onChanged: null,
          ),
          Text(
            LogInScreenText.rememberPassword,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _getStart(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: CustomTextButton(text: LogInScreenText.getStarted)
    );
  }

  Widget _iconButton(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SizedBox(
              width: 80,
              height: 80,
              child: TextButton(
                child: Image.asset("assets/images/ic_facebook.png"),
                onPressed: () {},
              ),
            )),
        SizedBox(
          width: 80,
          height: 80,
          child: TextButton(
            child: Image.asset("assets/images/ic_twitter.png"),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  Widget _forgotButton(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          LogInScreenText.forgotPassword,
          style: TextStyle(
              decoration: TextDecoration.underline, color: Colors.white),
        ));
  }
}
