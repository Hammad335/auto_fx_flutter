import 'package:auto_fx_flutter/core/theme/text_styles.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../styles/styles.dart';
import '../../theme/colors.dart';

class NeumorphicTextField extends StatelessWidget {
  final String hint;
  final String iconPath;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;

  const NeumorphicTextField({
    super.key,
    required this.hint,
    required this.iconPath,
    required this.textEditingController,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 55,
            child: Neumorphic(
              style: CustomNeumorphic.style(
                fillColor: textFieldFillColor,
                depth: -3,
                intensity: 0.75,
                borderRadius: 10,
              ),
            ),
          ),
          TextFormField(
            controller: textEditingController,
            style: const TextStyle(
              color: white,
            ),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyles.hintTextStyle,
              prefixIcon: ImageIcon(
                AssetImage(
                  iconPath,
                ),
                color: white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            validator: validator,
          ),
        ],
      ),
    );
  }
}
