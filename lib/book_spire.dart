
import 'package:bookspire/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class BookSpire extends StatelessWidget {
  const BookSpire({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     home:SplashView(),
    );
  }
}