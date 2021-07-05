import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              child: Image.network(
                "https://static.wixstatic.com/media/0e316a_9c5440219dfc4373ba699657ce3e032a.jpg/v1/fill/w_113,h_108,al_c,q_80,usm_0.66_1.00_0.01/0e316a_9c5440219dfc4373ba699657ce3e032a.webp",
                scale: 0.6,
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Center(
            child: Container(
              child: Image.network(
                "https://cdn-az.allevents.in/events3/banners/708c2c8593efdff0e82492a49f6e5c39cc0dac9e6067db686906fa9563789d1c-rimg-w400-h400-gmir.png?v=1583403490",
                scale: 2.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
