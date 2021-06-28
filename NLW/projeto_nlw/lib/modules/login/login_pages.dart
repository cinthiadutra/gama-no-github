import 'package:flutter/material.dart';
import 'package:projeto_nlw/modules/login/login_controller.dart';
import 'package:projeto_nlw/shared/themes/app_colors.dart';
import 'package:projeto_nlw/shared/themes/app_images.dart';
import 'package:projeto_nlw/shared/themes/app_text_styles.dart';
import 'package:projeto_nlw/shared/themes/widgets/social_login/social_login_button.dart';
import 'package:projeto_nlw/shared/widgets/social_login/social_login_button.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.background,
        // ignore: sized_box_for_whitespace
        body: Container(
            width: size.width,
            height: size.height,
            child: Stack(children: [
              Container(
                color: AppColors.primary,
                width: size.width,
                height: size.height * 0.36,
              ),
              Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    AppImages.person,
                    width: 208,
                    height: 300,
                  )),
              Positioned(
                bottom: size.height * 0.05,
                left: 0,
                right: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.logomini),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 30, left: 70, right: 70),
                        child: Text(
                          "Organize seus boletos em um só lugar",
                          textAlign: TextAlign.center,
                          style: TextStyles.titleHome,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 40, right: 40, top: 40),
                        child: SocialLoginButton(onTap: () {
                          controller.googleSignIn(context);
                        }),
                      ),
                    ]),
              )
            ])));
  }
}
