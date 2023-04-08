import 'package:auto_fx_flutter/features/bottom_nav_screen/bindings/nav_binding.dart';
import 'package:auto_fx_flutter/features/bottom_nav_screen/view/bottom_nav_screen.dart';
import 'package:auto_fx_flutter/features/splash_screen/bindings/splash_binding.dart';
import 'package:auto_fx_flutter/features/splash_screen/view/splash_screen.dart';
import 'package:get/get.dart';
import '../features/credentials_screen/bindings/credentials_bindings.dart';
import '../features/credentials_screen/view/credentials_screen.dart';

class Navigate {
  static List<GetPage>? routes = [
    GetPage(
      name: SplashScreen.name,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: CredentialsScreen.name,
      page: () => CredentialsScreen(),
      binding: CredentialsBindings(),
    ),
    GetPage(
      name: BottomNavScreen.name,
      page: () => BottomNavScreen(),
      binding: NavBinding(),
    ),
  ];
}
