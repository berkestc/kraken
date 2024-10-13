import 'package:flutter/services.dart';

abstract class PlatformService {
  void initialize(ValueChanged<int> onTriggerFetchAnimeList);
  Future<void> sendFetchAnimeListRequest({int page = 1});
}
