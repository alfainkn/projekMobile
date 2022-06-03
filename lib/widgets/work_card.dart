import 'package:flutter/material.dart';
import 'package:flutter_hero_list/widgets/row_customized.dart';

class WorkCard extends StatelessWidget {
  final String occupation;
  final String base;

  WorkCard({this.occupation, this.base});

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
                  'Work',
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
                  RowCustomized(textOne: 'Occupation: ', textTwo: '$occupation'),
                  RowCustomized(textOne: 'Base: ', textTwo: '$base'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
