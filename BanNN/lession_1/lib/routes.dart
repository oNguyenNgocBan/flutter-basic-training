import 'package:flutter/material.dart';
import 'package:lession_1/login.dart';
import 'package:lession_1/register.dart';

final Map<String, WidgetBuilder> routes = {
  loginRoutes: (context) => LogInScreen(),
  registerRoutes: (context) => RegisterScreen(),
};
