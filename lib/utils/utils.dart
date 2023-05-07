import 'package:get/get.dart';
import '../core/theme/colors.dart';

class Utils {
  static void showSnackBar(String title, String message) {
    Get.snackbar(
      title,
      message,
      backgroundColor: snackBarBackgroundColor,
    );
  }
}
