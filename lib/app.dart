import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:practice/route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: AppRouts.routes,
          // defaultTransition: Transition.fadeIn,
          // transitionDuration: const Duration(milliseconds: 200),
          // navigatorKey: Get.key,
          initialRoute: AppRouts.aboutPage,
        );
  }
}