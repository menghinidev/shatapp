import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shatapp/domain/enum/games_enum.dart';

class GamesConverter implements JsonConverter<Games, String> {
  const GamesConverter();

  @override
  Games fromJson(String game) {
    return Games.values.firstWhere((element) => element.name == game);
  }

  @override
  String toJson(Games game) => game.name;
}
