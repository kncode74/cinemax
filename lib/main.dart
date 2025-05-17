import 'package:cinemax/data/repository/api_repository.dart';
import 'package:cinemax/data/service/base_service.dart';
import 'package:cinemax/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApplication());
}

class MainApplication extends StatelessWidget {
  const MainApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(() {
        Get.lazyPut<ApiRepository>(() => ApiRepository());
        Get.lazyPut<BaseService>(() => BaseService());
      }),
      home: SplashScreen(),
    );
  }
}
