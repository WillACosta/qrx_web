import 'package:flutter/material.dart';
import 'package:qrx_web/modules/home/views/landing_screen.dart';

class QRxApp extends StatelessWidget {
  const QRxApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QRx Web App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(0),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: const BorderSide(
                  color: Colors.black,
                  width: 3,
                ),
              ),
            ),
            textStyle: MaterialStateProperty.all(
              const TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
      home: const LandingScreen(),
    );
  }
}
