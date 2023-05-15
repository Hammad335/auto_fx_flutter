import 'package:auto_fx_flutter/core/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import '../../../core/theme/colors.dart';
import '../../../core/widgets/widgets.dart';
import '../controller/credentials_controller.dart';

class CredentialsScreen extends StatelessWidget {
  static const String name = '/credentials-screen';
  final CredentialsController _controller = Get.find<CredentialsController>();

  CredentialsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _controller.init(context);
    return Scaffold(
      backgroundColor: secondBackgroundColor,
      body: SafeArea(
        child: ScreenBackgroundContainer(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: _controller.size.width * 0.11),
            child: Column(
              children: [
                SizedBox(height: _controller.size.height * 0.06),
                Image.asset(
                  'assets/images/logos/logo.png',
                  width: 170,
                  height: 100,
                ),
                const SizedBox(height: 50),
                CustomTabView(
                  credentialsController: _controller,
                  firstLabel: 'Sign in',
                  secondLabel: 'Sign up',
                  width: _controller.size.width * 0.33,
                  height: _controller.size.height * 0.045,
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        TextFields(controller: _controller),
                        const SizedBox(height: 15),
                        SizedBox(
                          width: _controller.size.width,
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(color: secondaryColor),
                            textAlign: TextAlign.end,
                          ),
                        ),
                        const SizedBox(height: 40),
                        Obx(() {
                          return CustomButton(
                            width: _controller.size.width * 0.75,
                            height: _controller.size.height * 0.052,
                            label: _controller.selectedAuthMode.value ==
                                    AuthMode.Signin
                                ? 'Log In'
                                : 'Sign up',
                            elevation: 15,
                            onPressed: () => _controller.authenticate(),
                          );
                        }),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 30),
                          child: const Text(
                            'OR',
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SocialMediaIcons(),
                        // const SizedBox(height: 100),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
