import 'package:flutter/material.dart';
import '../../../styles/styles.dart';
import '../../../theme/colors.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Hamad',
              style: TextStyles.homeHeadingTextStyle,
            ),
            const SizedBox(height: 4),
            const Text(
              'Have a look at your portfolio',
              style: TextStyles.homeSubHeadingTextStyle,
            ),
          ],
        ),
        const CircleAvatar(backgroundColor: secondaryColor),
      ],
    );
  }
}
