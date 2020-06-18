import 'package:flutter/material.dart';

import 'package:planet_app/model/plantsInfo.dart';
import 'package:planet_app/pages/plants_details_page.dart';

import 'package:planet_app/resources/sizes.dart';
import 'package:planet_app/resources/text_styles.dart';
import 'package:palette_generator/palette_generator.dart';

import 'clipped_image.dart';
import 'name_widget.dart';

class MemberWidget extends StatelessWidget {
  final Plants member;
  final bool compactMode;

  MemberWidget({this.member, this.compactMode = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: <Widget>[
          ClippedImage(imagePath: member.imagePath, compactMode: compactMode),
          SizedBox(width: size_20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NameWidget(name: member.name, style: nameStyle),
              SizedBox(height: size_8),
              Text(member.occupation, style: occupationStyle),
            ],
          )
        ],
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PlantsDetailsPage(
                  member: member,
                )));
      },
    );
  }

}
