// ignore_for_file: avoid_dynamic_calls

import "package:flutter_test/flutter_test.dart";
import "package:kraken/features/anime/data/DTOs/character/character_dto.dart";
import "package:kraken/features/anime/data/DTOs/paginated/paginated_dto.dart";
import "package:kraken/features/anime/domain/models/paginated.dart";

void main() {
  const characterId = 1;
  const characterName = "Character Name";
  const characterImageUrl = "https://example.com/image.jpg";
  const currentPage = 1;
  const hasNextPage = true;

  final json = {
    "data": [
      {
        "mal_id": characterId,
        "name": characterName,
        "images": {
          "jpg": {"image_url": characterImageUrl}
        }
      }
    ],
    "pagination": {"current_page": currentPage, "has_next_page": hasNextPage}
  };

  const characterDto = CharacterDto(
    id: characterId,
    name: characterName,
    imageUrl: characterImageUrl,
  );

  const paginatedDto = PaginatedDto<CharacterDto>(
    items: [characterDto],
    currentPage: currentPage,
    hasNextPage: hasNextPage,
  );

  const expectedPaginated = Paginated<CharacterDto>(
    items: [characterDto],
    page: currentPage,
    hasNextPage: hasNextPage,
  );

  test("PaginatedDto fromJson should correctly parse JSON", () {
    final parsedPaginatedDto = PaginatedDto.fromJson(
      json,
      (e) => CharacterDto.fromJson(e! as Map<String, dynamic>),
    );
    final parsedPaginated = parsedPaginatedDto.toDomain();

    expect(parsedPaginated.items.length, equals(expectedPaginated.items.length));
    expect(parsedPaginated.items.first.name, equals(expectedPaginated.items.first.name));
    expect(parsedPaginated.page, equals(expectedPaginated.page));
    expect(parsedPaginated.hasNextPage, equals(expectedPaginated.hasNextPage));
  });

  test("PaginatedDto toJson should correctly serialize to JSON", () {
    final json = paginatedDto.toJson((e) => e.toJson());

    expect(json["pagination"]["current_page"], equals(currentPage));
    expect(json["pagination"]["has_next_page"], equals(hasNextPage));
    expect(json["data"].length, equals(1));
    expect(json["data"][0]["name"], equals(characterName));
  });
}
