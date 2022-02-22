/*
  app 升级
*/

class AppUpdateRequestEntity {
  String device;
  String channel;
  String architecture;
  String model;

  AppUpdateRequestEntity({
    required this.device,
    required this.channel,
    required this.architecture,
    required  this.model,
  });

  factory AppUpdateRequestEntity.fromJson(Map<String, dynamic> json) =>
      AppUpdateRequestEntity(
        device: json["device"],
        channel: json["channel"],
        architecture: json["architecture"],
        model: json["model"],
      );

  Map<String, dynamic> toJson() => {
        "device": device,
        "channel": channel,
        "architecture": architecture,
        "model": model,
      };
}

class AppUpdateResponseEntity {
  String shopUrl;
  String fileUrl;
  String latestVersion;
  String latestDescription;

  AppUpdateResponseEntity({
    required this.shopUrl,
    required this.fileUrl,
    required this.latestVersion,
    required this.latestDescription,
  });

  factory AppUpdateResponseEntity.fromJson(Map<String, dynamic> json) =>
      AppUpdateResponseEntity(
        shopUrl: json["shopUrl"],
        fileUrl: json["fileUrl"],
        latestVersion: json["latestVersion"],
        latestDescription: json["latestDescription"],
      );

  Map<String, dynamic> toJson() => {
        "shopUrl": shopUrl,
        "fileUrl": fileUrl,
        "latestVersion": latestVersion,
        "latestDescription": latestDescription,
      };
}
