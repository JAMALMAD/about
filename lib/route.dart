import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:practice/aboute_page.dart';

class AppRouts {
  static const String aboutPage = "/aboutPage";

  static List<GetPage> routes = [
    GetPage(name: aboutPage, page: () => AboutePage()),
  ];
}