
// 登录请求
class UserLoginRequestEntity {
  String username;
  String password;

  UserLoginRequestEntity({
    required this.username,
    required this.password,
  });

  factory UserLoginRequestEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginRequestEntity(
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
      };
}

// 登录返回
class UserLoginResponseEntity {
  String message;
  // String displayName;
  // List<String> channels;

  UserLoginResponseEntity({
    required this.message, required String accessToken,
    // required this.displayName,
    // required this.channels, 
  });

  factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginResponseEntity(
        message: json["message"], accessToken: '',
        // displayName: json["display_name"],
        // channels: List<String>.from(json["channels"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        // "display_name": displayName,
        // "channels": List<dynamic>.from(channels.map((x) => x)),
      };
}
