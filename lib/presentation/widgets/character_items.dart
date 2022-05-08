import 'package:breaking_bad_app/constants/my_colors.dart';
import 'package:breaking_bad_app/data/models/characters_model.dart';
import 'package:flutter/material.dart';

class CharactersItem extends StatelessWidget {

  final Character character ; 

  const CharactersItem({ Key? key , required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: MyColors.myWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GridTile(child: Container(
        color: MyColors.myGrey,
        child: Image(image: NetworkImage(character.images),
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,)
        ),
        footer: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 10),
          color: Colors.black54,
          alignment: Alignment.bottomCenter,
          child: Text(character.name,
          style: const TextStyle(
            height: 1.3,
            fontSize: 16,
            color: MyColors.myWhite,
            fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textAlign: TextAlign.center,
          ),
        ),
        ),
      
    );
  }
}