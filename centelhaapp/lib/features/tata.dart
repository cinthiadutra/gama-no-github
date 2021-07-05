import 'package:centelhaapp/themes/app_colors.dart';
import 'package:centelhaapp/themes/app_images.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
import 'package:url_launcher/url_launcher.dart';

class FaleComTata extends StatefulWidget {
  const FaleComTata({Key? key}) : super(key: key);

  @override
  _FaleComTataState createState() => _FaleComTataState();
}

class _FaleComTataState extends State<FaleComTata> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.36,
              color: AppColors.primary,
            ),
            Positioned(
                top: 40,
                left: 0,
                right: 0,
                child: Image.asset(
                  AppImages.tata,
                  width: 208,
                  height: 300,
                )),
            Positioned(
              bottom: size.height * 0.05,
              left: 0,
              right: 0,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.centelhaLogo),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 70, right: 70),
                      child: Text(
                        "Fale com o Tata",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }

  launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+55-(21)985703566',
      text: "Fale com o Tata",
    );

    await launch('$link');
  }
}
