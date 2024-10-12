// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterDto _$$_CharacterDtoFromJson(Map<String, dynamic> json) =>
    _$_CharacterDto(
      id: json['mal_id'] as int,
      name: json['name'] as String,
      imageUrl: const ImageUrlConverter()
          .fromJson(json['imageUrl'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CharacterDtoToJson(_$_CharacterDto instance) =>
    <String, dynamic>{
      'mal_id': instance.id,
      'name': instance.name,
      'imageUrl': const ImageUrlConverter().toJson(instance.imageUrl),
    };
