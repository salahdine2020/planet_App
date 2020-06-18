import 'package:flutter/material.dart';
import 'package:planet_app/model/plantsInfo.dart';

import 'package:planet_app/resources/sizes.dart';
import 'package:planet_app/resources/text_styles.dart';

import 'package:planet_app/widgets/member_widget.dart';

class PlantsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_backspace, color: Colors.black),
        title: Text(
         "PLANTES",
          style: appBarTextStyle,
        ),
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Expanded(
            flex: 10,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return MemberWidget(
                    member: plants[index],
                    compactMode: false,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: size_20,
                  );
                },
                itemCount: plants.length),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          )
        ],
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final sugesstionlist = plants.where((p) => p.name.startsWith(query)).toList();
    return Row(
      children: <Widget>[
        SizedBox(height: 16,),
        Expanded(
          flex: 2,
          child: Container(),
        ),
        Expanded(
          flex: 10,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return MemberWidget(
                  member: sugesstionlist[index],
                  compactMode: false,
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: size_20,
                );
              },
              itemCount: sugesstionlist.length),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        )
      ],
    );
  }
}
