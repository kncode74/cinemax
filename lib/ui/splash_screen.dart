import 'package:cinemax/assets/image.dart';
import 'package:cinemax/ui/cinema_list/cinema_list.binding.dart';
import 'package:cinemax/ui/cinema_list/cinema_list.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(
        () => CinemaListView(),
        binding: CinemaListBinding(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1D2B),
      body: Center(
        child: Image.asset(icon.logo),
      ),
    );
  }
}
