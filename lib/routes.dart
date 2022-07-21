import 'package:commerce/Middlewares/onbarding_middleware.dart';
import 'package:commerce/views/OnBoarding/OnBoarding.dart';
import 'package:commerce/views/auth/Opt.dart';
import 'package:commerce/views/auth/forget_password.dart';
import 'package:commerce/views/auth/login/login.dart';
import 'package:commerce/views/auth/login_success.dart';
import 'package:commerce/views/auth/register/completed_profile.dart';
import 'package:commerce/views/auth/register/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: '/', page: () => const OnBoarding(), middlewares: [
    OnBoardingMiddleWare(),
  ]),
  GetPage(name: Login.routeName, page: () => const Login()),
  GetPage(name: Register.routeName, page: () => const Register()),
  GetPage(
      name: CompletedProfile.routeName, page: () => const CompletedProfile()),
  GetPage(name: LogginSuccess.routeName, page: () => const LogginSuccess()),
  GetPage(name: ForgetPassword.routeName, page: () => const ForgetPassword()),
];
