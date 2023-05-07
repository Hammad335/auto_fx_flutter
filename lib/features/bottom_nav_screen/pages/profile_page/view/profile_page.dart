import 'package:auto_fx_flutter/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const String name = '/home-screen';

  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Text(
          'user profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
