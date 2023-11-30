import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_media/ViewModel/services/SplashServices.dart';
import 'package:tech_media/res/fonts.dart';

import '../../res/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices services = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    services.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          FaIcon(
            FontAwesomeIcons.solidLightbulb,
            color: Colors.white,
            size: 150,
          ),
          SizedBox(height: 40),
          Center(
              child: Text(
            'Welcome to\n Quiz App',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 37,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ))
        ],
      )),
    );
  }
}
