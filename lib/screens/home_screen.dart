import 'package:flutter/material.dart';
import 'package:mymushaf_app/screens/splash_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () => goBack(context), child: Text('Button')),
    ));
  }

  goBack(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SplashScreen()));
  }
}
