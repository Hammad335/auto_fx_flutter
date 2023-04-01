import 'package:auto_fx_flutter/core/enums/enums.dart';
import 'package:auto_fx_flutter/features/controller/credentials_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets.dart';

class TextFields extends StatefulWidget {
  final CredentialsController controller;

  const TextFields({super.key, required this.controller});

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();

  // late AnimationController _animationController;
  // late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    // _animationController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(milliseconds: 300),
    // );
    // _opacityAnimation = Tween(
    //   begin: 0.0,
    //   end: 1.0,
    // ).animate(
    //     CurvedAnimation(parent: _animationController, curve: Curves.easeIn));
    // widget.controller.initAnimationController(_animationController);
  }

  @override
  void dispose() {
    // _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Obx(
            () => NeumorphicTextField(
              hint: widget.controller.selectedAuthMode.value == AuthMode.Signin
                  ? 'Username or Email'
                  : 'Username',
              controller: widget.controller.userNameController,
              iconPath: 'assets/images/text_field_prefixes/user_name.png',
            ),
          ),
          // Obx(
          //   () => AnimatedContainer(
          //     padding: const EdgeInsets.all(0),
          //     duration: const Duration(milliseconds: 300),
          //     curve: Curves.easeIn,
          //     height:
          //         widget.controller.selectedTab.value == CredentialTab.Signup
          //             ? widget.controller.size.height * 0.086
          //             : 0,
          //     child:
          Obx(
            () => widget.controller.selectedAuthMode.value == AuthMode.Signup
                ? NeumorphicTextField(
                    hint: 'Email',
                    iconPath: 'assets/images/text_field_prefixes/password.png',
                    controller: widget.controller.emailController,
                  )
                : const SizedBox.shrink(),
          ),
          NeumorphicTextField(
            hint: 'Password',
            controller: widget.controller.passwordController,
            iconPath: 'assets/images/text_field_prefixes/password.png',
          ),
        ],
      ),
    );
  }
}
