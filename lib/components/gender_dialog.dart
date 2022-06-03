import 'package:flutter/material.dart';
import 'package:flutter_hero_list/data/gender_manager.dart';
import 'package:provider/provider.dart';

class GenderDialog extends StatelessWidget {
  //const GenderDialog({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 3,
          left: 2,
          right: 2,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select Gender',
                    style: TextStyle(
                      color: Colors.amber[800],//Theme.of(context).primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 14),
                    child: Consumer<GenderManager>(
                      builder: (_, genderManager, __) {
                        return DropdownButtonFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            //labelText: 'Filter by gender:',
                            hintText: 'Filter by gender:',
                          ),
                          items: genderManager.genderList,
                          value: genderManager.itemSelected,
                          onChanged: (value1) {
                            genderManager.itemSelected = value1;
                          },
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 45,
                      width: double.maxFinite,
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.amber[800],//Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Filter'),
                        onPressed: () {
                          Navigator.of(context)
                              .pop(context.read<GenderManager>().itemSelected);// return item selected of the dropdown list
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
