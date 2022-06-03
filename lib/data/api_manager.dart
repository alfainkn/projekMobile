import 'package:flutter/cupertino.dart';
import 'package:flutter_hero_list/model/hero_super.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request = 'https://akabab.github.io/superhero-api/api/all.json';

class ApiManager extends ChangeNotifier {
  ApiManager() {
    getHeroes();
  }

  List<HeroSuper> heroesList = [];

  String _gender = 'AllHero';

  String get gender => _gender;

  set gender(String value) {
    _gender = value;

    notifyListeners();
  }

  String _search = '';

  String get search => _search;

  set search(String value) {
    _search = value;

    notifyListeners();
  }

  List<HeroSuper> get filteredHeroesSuper {
    final List<HeroSuper> filteredHeroesSuper = [];

    if (search.isEmpty && gender == 'AllHero') {
      filteredHeroesSuper.addAll(heroesList);
    } else if (search.isNotEmpty) {
      filteredHeroesSuper.addAll(heroesList
          .where((s) => s.name.toLowerCase().contains(search.toLowerCase())));
    } else if (gender.isNotEmpty && gender == 'Female') {
      filteredHeroesSuper
          .addAll(heroesList.where((h) => h.gender.contains(gender)));
    } else if (gender.isNotEmpty && gender == 'Male') {
      filteredHeroesSuper.addAll(heroesList.where((e) => e.gender == 'Male'));
    }
    return filteredHeroesSuper;
  }

  Future<void> getHeroes() async {
    http.Response response = await http.get(request);
    Iterable list = json.decode(response.body);

    heroesList = list.map((doc) => HeroSuper.fromJson(doc)).toList();

    notifyListeners();
  }
}
