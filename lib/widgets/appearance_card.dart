import 'package:flutter/material.dart';
import 'package:flutter_hero_list/widgets/row_customized.dart';

class AppearanceCard extends StatelessWidget {
  final String gender;
  final String race;
  final List height;
  final List weight;
  final String eyeColor;
  final String hairColor;

  AppearanceCard(
      {this.gender,
      this.race,
      this.height,
      this.weight,
      this.eyeColor,
      this.hairColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black54,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Container(
              color: Colors.black54,
              height: 40,
              width: double.maxFinite,
              child: Center(
                child: Text(
                  'Appearance',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                children: [
                  RowCustomized(textOne: 'Gender: ', textTwo: '$gender'),
                  RowCustomized(textOne: 'Race: ', textTwo: '$race'),
                  RowCustomized(textOne: 'Height: ', textTwo: '$height'),
                  RowCustomized(textOne: 'Weight: ', textTwo: '$weight'),
                  RowCustomized(textOne: 'Eye color: ', textTwo: '$eyeColor'),  
                  RowCustomized(textOne: 'Hair color: ', textTwo: '$hairColor'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
