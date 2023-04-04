class UserModel {
  final String uId;
  final String name;
  final String email;
  bool isEmailVerified;

  UserModel({
    required this.uId,
    required this.name,
    required this.email,
    this.isEmailVerified = false,
  });

  set emailVerified(bool isEmailVerified) =>
      this.isEmailVerified = isEmailVerified;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'uId': uId,
      'isEmailVerified': isEmailVerified,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'] as String,
      email: json['email'] as String,
      uId: json['uId'] as String,
      isEmailVerified: json['isEmailVerified'] as bool,
    );
  }
}
