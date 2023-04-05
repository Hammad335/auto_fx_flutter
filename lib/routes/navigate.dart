import 'package:get/get.dart';
import '../features/credentials_screen/bindings/credentials_bindings.dart';
import '../features/credentials_screen/view/credentials_screen.dart';

class Navigate {
  static List<GetPage>? routes = [
    GetPage(
      name: '/',
      page: () => CredentialsScreen(),
      binding: CredentialsBindings(),
    ),
  ];
}
