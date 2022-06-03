import 'package:flutter/material.dart';
import 'package:flutter_hero_list/widgets/text_customized.dart';

class RowCustomized extends StatelessWidget {
  final String textOne;
  final String textTwo;

  RowCustomized({this.textOne, this.textTwo});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextCustomized(
                text: textOne, color: Colors.black, fontWeight: FontWeight.bold),
            Expanded(child: TextCustomized(text: textTwo, color: Colors.grey[700])),
          ],
        ),
        Divider(height: 2, color: Colors.grey[600]),
      ],
    );
  }
}
