import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken/features/anime/data/utils/converters.dart';

import '../../../domain/models/character.dart';

part 'character_dto.freezed.dart';
part 'character_dto.g.dart';

@freezed
class CharacterDto with _$CharacterDto {
  const factory CharacterDto({
    @JsonKey(name: "mal_id") required int id,
    required String name,
    @ImageUrlConverter() @JsonKey(name: "images") required String imageUrl,
  }) = _CharacterDto;

  const CharacterDto._();

  factory CharacterDto.fromJson(Map<String, dynamic> json) => _$CharacterDtoFromJson(json);

  Character toDomain() {
    return Character(
      id: id,
      name: name,
      imageUrl: imageUrl,
    );
  }
}
