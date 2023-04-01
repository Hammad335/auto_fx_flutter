import 'package:auto_fx_flutter/features/bindings/credentials_bindings.dart';
import 'package:auto_fx_flutter/features/view/credentials_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
