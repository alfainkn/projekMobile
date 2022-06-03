import 'package:flutter/material.dart';

class GenderManager extends ChangeNotifier {

  GenderManager(){
    dropdownGender();
  }

  List<DropdownMenuItem<String>> genderList = [];

  String itemSelected = 'AllHero';//inisiasi value dari list

  dropdownGender() {//List item by gender
    genderList
        .add(DropdownMenuItem(child: Text('All Hero', style: TextStyle(color: Colors.grey[500])), value: 'AllHero'));
    genderList
        .add(DropdownMenuItem(child: Text('Male'), value: 'Male'));
    genderList
        .add(DropdownMenuItem(child: Text('Female'), value: 'Female'));

  }

  notifyListeners();

}