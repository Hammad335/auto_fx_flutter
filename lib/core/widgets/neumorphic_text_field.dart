import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../constants/constants.dart';

class NeumorphicTextField extends StatelessWidget {
  final String hint;
  final String iconPath;
  final TextEditingController controller;

  const NeumorphicTextField({
    super.key,
    required this.hint,
    required this.iconPath,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Neumorphic(
        style: NeumorphicStyle(
          color: textFieldFillColor,
          depth: -3,
          intensity: 0.75,
          lightSource: LightSource.bottomRight,
          shadowLightColorEmboss: Colors.black,
          border: const NeumorphicBorder.none(),
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(10),
          ),
        ),
        child: TextFormField(
          controller: controller,
          style: const TextStyle(
            color: white,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: greyLight,
            ),
            prefixIcon: ImageIcon(
              AssetImage(
                iconPath,
              ),
              color: white,
            ),
            // contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
