import 'package:flutter/material.dart';
import 'package:lession_1/constants.dart';

class AuthenHeader extends StatelessWidget {
  const AuthenHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Image.network(
            'https://picsum.photos/seed/516/600',
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 12),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                LogInScreenText.conn,
                style: TextStyle(
                  color: Color(0xFFFF07D5),
                  fontSize: 34,
                ),
              ),
              Text(
                LogInScreenText.exion,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            LogInScreenText.appSlogan,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
