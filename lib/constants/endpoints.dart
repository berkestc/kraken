// ignore: avoid_classes_with_only_static_members
class Endpoints {
  static const baseUrl = "https://api.jikan.moe/v4";
  static const animes = "/top/anime";

  static String characters(String id) => "/anime/$id/characters";
}
