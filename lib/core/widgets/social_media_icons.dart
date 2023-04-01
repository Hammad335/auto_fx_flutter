import 'package:auto_fx_flutter/constants/constants.dart';
import 'package:flutter/material.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          backgroundColor: white,
          radius: 15,
          child: Image.asset(
            'assets/images/logos/facebook_logo.png',
          ),
        ),
        CircleAvatar(
          backgroundColor: white,
          radius: 15,
          child: Image.asset('assets/images/logos/google_logo.png'),
        ),
        CircleAvatar(
          backgroundColor: white,
          radius: 15,
          child: Image.asset('assets/images/logos/user_logo.png'),
        ),
      ],
    );
  }
}
