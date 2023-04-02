import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/credentials_screen/bindings/credentials_bindings.dart';
import 'features/credentials_screen/view/credentials_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => CredentialsScreen(),
          binding: CredentialsBindings(),
        ),
      ],
    );
  }
}
