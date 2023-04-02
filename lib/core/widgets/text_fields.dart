import 'package:auto_fx_flutter/core/enums/enums.dart';
import 'package:auto_fx_flutter/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../features/credentials_screen/controller/credentials_controller.dart';
import 'widgets.dart';

class TextFields extends StatefulWidget {
  final CredentialsController controller;

  const TextFields({super.key, required this.controller});

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields>
    with SingleTickerProviderStateMixin {
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
      key: widget.controller.formKey,
      child: Column(
        children: [
          Obx(
            () => widget.controller.selectedAuthMode.value == AuthMode.Signup
                ? NeumorphicTextField(
                    hint: 'Username',
                    textEditingController: widget.controller.userNameController,
                    iconPath: 'assets/images/text_field_prefixes/user_name.png',
                    validator: Validator.validateUserName,
                  )
                : const SizedBox.shrink(),
          ),
          NeumorphicTextField(
            hint: 'Email',
            iconPath: 'assets/images/text_field_prefixes/user_name.png',
            textEditingController: widget.controller.emailController,
            validator: Validator.validateEmail,
          ),
          NeumorphicTextField(
            hint: 'Password',
            textEditingController: widget.controller.passwordController,
            iconPath: 'assets/images/text_field_prefixes/password.png',
            validator: Validator.validatePassword,
          ),
        ],
      ),
    );
  }
}
