// import 'mate'
import 'package:commerce/controllers/auth/login_controller.dart';
import 'package:commerce/core/Constrant/AppColors.dart';
import 'package:commerce/core/Constrant/AppSvgImg.dart';
import 'package:commerce/core/Functions/close_alert.dart';
import 'package:commerce/core/Shared/app_bars.dart';
import 'package:commerce/views/auth/login/widgets/login_form.dart';
import 'package:commerce/views/auth/register/register.dart';
import 'package:commerce/views/auth/widgets/Social_links.dart';
import 'package:commerce/views/auth/widgets/auth_page_heading.dart';
import 'package:commerce/views/auth/widgets/contiue_button.dart';
import 'package:commerce/views/auth/widgets/custom_form_filed.dart';
import 'package:commerce/views/auth/widgets/forget_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  static String routeName = '/login';
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    return Scaffold(
      appBar: BarWithNowBackArrow(context, 'Sign In'),
      body: WillPopScope(
        onWillPop: appColseAlert,
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              // Page Headding
              AuthPageHeading(
                  head: 'Wellcome Back',
                  description:
                      'is important to document a parent’s attendance using a sign-in sheet as it provides proof of'),
              LoginFrom(),
              // Socilal Links
              SocialLinks(),
            ],
          ),
        ),
      ),
    );
  }
}
