import 'package:assessment_project/layers/presentation/views/home_screen.dart';
import 'package:get/get.dart';


class RoutesClass{
  static List<GetPage> routes = [
    GetPage(name: HomeScreen.pageId, page: () => HomeScreen()),
  ];

}