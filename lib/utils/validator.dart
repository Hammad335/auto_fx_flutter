class Validator {
  static String? validateUserName(String? userName) {
    if (userName == null || userName.isEmpty) {
      return 'Please provide username';
    } else if (userName.length <= 2) {
      return 'Too short, can be b/w 2 to 7 characters';
    } else if (userName.length >= 7) {
      return 'Too long, can be b/w 2 to 7 characters';
    }
    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Please provide password';
    } else if (password.length <= 5) {
      return 'Too short, type at least 6 character';
    }
    return null;
  }

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Please provide email address';
    } else if (!email.endsWith('@gmail.com')) {
      return 'Badly formatted';
    }
    return null;
  }
}
