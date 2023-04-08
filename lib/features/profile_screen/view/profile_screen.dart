import 'package:auto_fx_flutter/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  static const String name = '/home-screen';

  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Text('user profile'),
      ),
    );
  }
}
