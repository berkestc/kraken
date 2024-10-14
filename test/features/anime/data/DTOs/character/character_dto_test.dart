import "package:flutter_test/flutter_test.dart";
import "package:kraken/features/anime/data/DTOs/character/character_dto.dart";
import "package:kraken/features/anime/domain/models/character.dart";

void main() {
  const characterId = 1;
  const characterName = "Character Name";
  const characterImageUrl = "https://example.com/image.jpg";

  final json = {
    "mal_id": characterId,
    "name": characterName,
    "images": {
      "jpg": {"image_url": characterImageUrl}
    }
  };

  const characterDto = CharacterDto(
    id: characterId,
    name: characterName,
    imageUrl: characterImageUrl,
  );

  const expectedCharacter = Character(
    id: characterId,
    name: characterName,
    imageUrl: characterImageUrl,
  );

  test("CharacterDto fromJson should correctly parse JSON", () {
    final parsedCharacterDto = CharacterDto.fromJson(json);
    final parsedCharacter = parsedCharacterDto.toDomain();

    expect(parsedCharacter.id, equals(expectedCharacter.id));
    expect(parsedCharacter.name, equals(expectedCharacter.name));
    expect(parsedCharacter.imageUrl, equals(expectedCharacter.imageUrl));
  });

  test("CharacterDto toDomain should correctly map to Character model", () {
    final mappedCharacter = characterDto.toDomain();

    expect(mappedCharacter.id, equals(expectedCharacter.id));
    expect(mappedCharacter.name, equals(expectedCharacter.name));
    expect(mappedCharacter.imageUrl, equals(expectedCharacter.imageUrl));
  });
}
