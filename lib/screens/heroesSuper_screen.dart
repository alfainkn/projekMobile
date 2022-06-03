import 'package:flutter/material.dart';
import 'package:flutter_hero_list/components/gender_dialog.dart';
import 'package:flutter_hero_list/components/search_dialog.dart';
import 'package:flutter_hero_list/data/api_manager.dart';
import 'package:flutter_hero_list/tiles/super_hero_tile.dart';
import 'package:provider/provider.dart';

class HeroesSuperScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<ApiManager>(
          builder: (_, apiManager, __) {
            if (apiManager.search.isEmpty) {
              return Text('HEROES LIST');
            } else {
              return LayoutBuilder(
                builder: (_, constraints) {
                  return GestureDetector(
                    onTap: () async {
                      final search = await showDialog(
                          context: context, builder: (_) => SearchDialog());
                      if (search != null) {
                        apiManager.search = search;
                      }
                    },
                    child: Container(
                      width: constraints.biggest.width,
                      child:
                          Text(apiManager.search, textAlign: TextAlign.center),
                    ),
                  );
                },
              );
            }
          },
        ),
        centerTitle: true,
        actions: [
          Consumer<ApiManager>(
            builder: (_, apiManager, __) {
              if (apiManager.search.isEmpty) {
                return IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () async {
                    final search = await showDialog<String>(
                        context: context, builder: (_) => SearchDialog());
                    if (search != null) {
                      apiManager.search = search;
                    }
                  },
                );
              } else {
                return IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () async {
                    apiManager.search = '';
                  },
                );
              }
            },
          ),
        ],
      ),
      body: Consumer<ApiManager>(
        builder: (_, apiManager, __) {
          final filteredHerosSuper = apiManager.filteredHeroesSuper;
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: GridView.builder(
              itemCount: filteredHerosSuper.length,
              itemBuilder: (context, index) =>
                  SuperHeroTile(filteredHerosSuper[index]),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 14,
        backgroundColor: Colors.amber[800],
        onPressed: () async{
          final gender = await showDialog(context: context, builder: (_) => GenderDialog());
          if(gender != null){
            context.read<ApiManager>().gender = gender;
          }
        },
        label: Text('Filter', style: TextStyle(fontSize: 16),),
      ),
    );
  }
}
