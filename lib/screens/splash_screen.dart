import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mymushaf_app/globals.dart';
import 'package:mymushaf_app/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: themeLight,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/images/background.jpg')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Image.asset('assets/images/logo.png', width: 184),
                            const SizedBox(
                              height: 8,
                            ),
                            Text("My Mushaf", style: splashText)
                          ],
                        )
                      ],
                    ),
                    Positioned(
                        bottom: -24,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: secondary,
                                foregroundColor: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                            onPressed: () => openPage(context),
                            child: Text('Yuk Baca !')))
                  ],
                ),
              ]),
        ));
  }

  openPage(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }
}
