import 'package:flutter/material.dart';
import 'package:flutter_hero_list/widgets/row_customized.dart';

class BiographyCard extends StatelessWidget {

  final String fullName;
  final String alterEgos;
  final List aliases;
  final String placeOfBirth;
  final String firstAppearance;
  final String publisher;
  final String alignment;

  BiographyCard({this.fullName, this.alterEgos, this.aliases, this.placeOfBirth, 
    this.firstAppearance, this.publisher, this.alignment});

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
                  'Biography',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowCustomized(textOne: 'Full name: ', textTwo: '$fullName'),
                  RowCustomized(textOne: 'Alter egos: ', textTwo: '$alterEgos'),  
                  RowCustomized(textOne: 'Aliases: ', textTwo: '$aliases'),
                  RowCustomized(textOne: 'Place of birth: ', textTwo: '$placeOfBirth'),
                  RowCustomized(textOne: 'First appearace: ', textTwo: '$firstAppearance'),
                  RowCustomized(textOne: 'Publisher: ', textTwo: '$publisher'),
                  RowCustomized(textOne: 'Alignment: ', textTwo: '$alignment'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
