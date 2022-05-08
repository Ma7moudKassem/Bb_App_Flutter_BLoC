import 'package:bloc/bloc.dart';
import 'package:breaking_bad_app/data/models/characters_model.dart';
import 'package:breaking_bad_app/data/repository/characters_repository.dart';
import 'package:flutter/material.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersRepository charactersRepository;
    List<Character> characters = [];

  CharactersCubit(this.charactersRepository) : super(CharactersInitialState());

  List<Character> getAllCharacter() {
    charactersRepository.getAllCharacters().then((characters) {
      emit(CharactersLoadedState(
        characters
        ));

      this.characters = characters;

    });
    return characters;

  }
}
