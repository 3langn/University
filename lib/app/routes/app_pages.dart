import 'package:get/get.dart';
import 'package:university_helper/app/modules/home/bindings/home_screen_bindings.dart';
import 'package:university_helper/app/modules/home/home_screen.dart';
import 'package:university_helper/app/modules/popular_university_detail/bindings/popular_detail_screen_binding.dart';
import 'package:university_helper/app/modules/popular_university_detail/popular_detail_screen.dart';
import 'package:university_helper/app/modules/search/bindings/search_screen_binding.dart';
import 'package:university_helper/app/modules/search/search_screen.dart';
import 'package:university_helper/app/modules/splash/bindings/splash_screen_binding.dart';
import 'package:university_helper/app/modules/splash/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.POPULAR_DETAIL,
      page: () => PopularDetail(),
      binding: PopularDetailScreenBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchScreen(),
      binding: SearchScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeScreen(),
      binding: HomeScreenBinding(),
    ),
  ];
}
