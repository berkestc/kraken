import 'package:json_annotation/json_annotation.dart';

class LargeImageUrlConverter implements JsonConverter<String, Map<String, dynamic>> {
  const LargeImageUrlConverter();

  @override
  String fromJson(Map<String, dynamic> json) {
    return (json["jpeg"] as Map<String, dynamic>)["large_image_url"] as String;
  }

  @override
  Map<String, dynamic> toJson(String object) {
    return {
      "jpeg": {"large_image_url": object}
    };
  }
}

class ImageUrlConverter implements JsonConverter<String, Map<String, dynamic>> {
  const ImageUrlConverter();

  @override
  String fromJson(Map<String, dynamic> json) {
    return (json["jpeg"] as Map<String, dynamic>)["image_url"] as String;
  }

  @override
  Map<String, dynamic> toJson(String object) {
    return {
      "jpeg": {"image_url": object}
    };
  }
}

Object? fromPaginationJson(Map<dynamic, dynamic> json, String key) {
  return (json["pagination"] as Map<String, dynamic>)[key];
}
