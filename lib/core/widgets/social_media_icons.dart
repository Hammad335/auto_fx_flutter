import 'package:auto_fx_flutter/core/enums/enums.dart';
import 'package:auto_fx_flutter/features/credentials_screen/controller/credentials_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/colors.dart';

class SocialMediaIcons extends StatelessWidget {
  final CredentialsController _controller = Get.find<CredentialsController>();

  SocialMediaIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _socialMediaWidget(
            imagePath: 'assets/images/logos/facebook_logo.png',
            socialAccount: SocialAccount.Facebook),
        _socialMediaWidget(
          imagePath: 'assets/images/logos/google_logo.png',
          socialAccount: SocialAccount.Google,
        ),
        _socialMediaWidget(imagePath: 'assets/images/logos/user_logo.png'),
      ],
    );
  }

  Widget _socialMediaWidget({
    required String imagePath,
    SocialAccount? socialAccount,
  }) {
    return GestureDetector(
      onTap: () {
        if (null != socialAccount) {
          print(socialAccount.toString());
          _controller.signInWithSocialAccount(socialAccount);
        }
      },
      child: CircleAvatar(
        backgroundColor: secondaryColor,
        radius: 15,
        child: Image.asset(imagePath),
      ),
    );
  }
}
