import 'package:breaking_bad_app/data/models/characters_model.dart';
import 'package:breaking_bad_app/data/web_services/characters_web_services.dart';

class CharactersRepository{

final CharactersWebServices charactersWebServices;

CharactersRepository(this.charactersWebServices);

Future <List<Character>> getAllCharacters () async{

final characters = await charactersWebServices.getAllCharacters();
return characters.map((character) => Character.fromJson(character)).toList();

}
}