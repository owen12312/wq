
// 上传请求
class UploadImageRequestEntity {
  String username;
  String password;

  UploadImageRequestEntity({
    required this.username,
    required this.password,
  });

  factory UploadImageRequestEntity.fromJson(Map<String, dynamic> json) =>
      UploadImageRequestEntity(
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
      };
}

// 登录返回
class UploadImageResponseEntity {
  String message;
  UploadImageResponseEntity({
    required this.message, 
    required String accessToken,
  });

  factory UploadImageResponseEntity.fromJson(Map<String, dynamic> json) =>
      UploadImageResponseEntity(
        message: json["message"], accessToken: '',
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
