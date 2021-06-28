import 'package:flutter/material.dart';
import 'package:projeto_nlw/shared/themes/app_colors.dart';
import 'package:projeto_nlw/shared/themes/app_images.dart';
import 'package:projeto_nlw/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(BorderSide(
              color: AppColors.stroke,
            ))),
        height: 56,
        child: Row(children: [
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Image.asset(AppImages.google),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 56,
                    width: 1,
                    color: AppColors.stroke,
                  )
                ],
              )),
          Expanded(
              flex: 4,
              child: Text(
                "Entrar com o Google",
                style: TextStyles.buttonGray,
              )),
        ]),
      ),
    );
  }
}
