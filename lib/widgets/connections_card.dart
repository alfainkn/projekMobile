import 'package:flutter/material.dart';
import 'package:flutter_hero_list/widgets/row_customized.dart';

class ConnectionsCard extends StatelessWidget {

  final String groupAffiliation;
  final String relatives;

  ConnectionsCard({this.groupAffiliation, this.relatives});

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
                  'Connections',
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
                  RowCustomized(textOne: 'Group affiliation: ', textTwo: '$groupAffiliation'),  
                  RowCustomized(textOne: 'Relatives: ', textTwo: '$relatives'),  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
