import 'package:flutter/material.dart';
import 'package:flutter_hero_list/model/hero_super.dart';
import 'package:flutter_hero_list/screens/herodetails_screen.dart';

class SuperHeroTile extends StatelessWidget {

  final HeroSuper heroSuper;

  SuperHeroTile(this.heroSuper);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: GridTile(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => HeroDetailsScreen(heroSuper))
            );
          },
          child: Image.network(
            heroSuper.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            heroSuper.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}