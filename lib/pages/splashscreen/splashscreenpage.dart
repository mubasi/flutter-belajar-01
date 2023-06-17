import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/home/homepage.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
      logo: Image.asset('assets/icons/logo-kab-langkat.png'),
      title: const Text(
        "Selamat Datang",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: const Text("Silahkan tunggu..."),
      navigator: const HomePage(),
      durationInSeconds: 10,
    ),
    );
  }
}