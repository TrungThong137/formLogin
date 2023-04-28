import 'package:flutter/material.dart';
import 'package:full_app/main.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds:const HomePage(),
      backgroundColor: Colors.green,
      title: const Text('new Page', textScaleFactor: 2,),
      image: Image.network('https://s3.o7planning.com/images/triceratops/image1.png'),
      loadingText:const Text("Loading..."),
      photoSize: 110,
      loaderColor: Colors.amber,
    );
  }
}