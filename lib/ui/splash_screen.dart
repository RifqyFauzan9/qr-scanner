import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qr_generator_and_scanner/ui/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState;
    // Delay 3 detik
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF553FB8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo atau animasi
            Image.asset(
              'assets/images/splash.png', // pastikan gambar ada di folder assets
              width: 200, // ukuran gambar
              height: 200,
            ),
            const SizedBox(height: 20),
            // Teks Splash
            const Text(
              'QR SCANNER',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
