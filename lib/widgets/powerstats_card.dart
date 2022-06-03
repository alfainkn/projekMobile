import 'package:flutter/material.dart';

class PowerstatsCard extends StatelessWidget {
  final int intelligence;
  final int strength;
  final int speed;
  final int durability;
  final int power;
  final int combat;

  PowerstatsCard({
    this.intelligence,
    this.strength,
    this.speed,
    this.durability,
    this.power,
    this.combat,
  });

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
                    'Power stats',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _containerWidget('$intelligence', 'Intelligence'),
                    _containerWidget('$strength', 'strength'),
                    _containerWidget('$speed', 'speed'),
                  ],
                ),
                Divider(height: 2, color: Colors.grey[600]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _containerWidget('$durability', 'durability'),
                    _containerWidget('$power', 'power'),
                    _containerWidget('$combat', 'combat'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _containerWidget(text, title) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4),
      child: Container(
        height: 70,
        width: 80,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black54,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
              child: Container(
                height: 20,
                color: Colors.black,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.flash_on, color: Colors.grey[600]),
                Container(
                  height: 45,
                  child: Center(
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        //color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
