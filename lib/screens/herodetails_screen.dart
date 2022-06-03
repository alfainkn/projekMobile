import 'package:flutter/material.dart';
import 'package:flutter_hero_list/model/hero_super.dart';
import 'package:flutter_hero_list/widgets/appearance_card.dart';
import 'package:flutter_hero_list/widgets/biography_card.dart';
import 'package:flutter_hero_list/widgets/connections_card.dart';
import 'package:flutter_hero_list/widgets/powerstats_card.dart';
import 'package:flutter_hero_list/widgets/work_card.dart';

class HeroDetailsScreen extends StatelessWidget {
  final HeroSuper heroSuper;

  HeroDetailsScreen(this.heroSuper);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Superhero Details'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image.asset(
            'images/imagebackground image.jpg',
            fit: BoxFit.fill,
            height: 1200.0,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                        heroSuper.imageUrl,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Column(
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                      Text(
                        heroSuper.name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  PowerstatsCard(
                    intelligence: heroSuper.intelligence,
                    strength: heroSuper.strength,
                    speed: heroSuper.speed,
                    durability: heroSuper.durability,
                    power: heroSuper.power,
                    combat: heroSuper.combat,
                  ),
                  AppearanceCard(
                    gender: heroSuper.gender,
                    race: heroSuper.race,
                    height: heroSuper.height,
                    weight: heroSuper.weight,
                    eyeColor: heroSuper.eyeColor,
                    hairColor: heroSuper.hairColor,
                  ),
                  BiographyCard(
                    fullName: heroSuper.fullName,
                    alterEgos: heroSuper.alterEgos,
                    aliases: heroSuper.aliases,
                    placeOfBirth: heroSuper.placeOfBirth,
                    firstAppearance: heroSuper.firstAppearance,
                    publisher: heroSuper.publisher,
                    alignment: heroSuper.alignment,
                  ),
                  WorkCard(
                    occupation: heroSuper.occupation,
                    base: heroSuper.base,
                  ),
                  ConnectionsCard(
                    groupAffiliation: heroSuper.groupAffiliation,
                    relatives: heroSuper.relatives,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
