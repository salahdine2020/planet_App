import 'package:flutter/material.dart';
import 'package:planet_app/model/plantsInfo.dart';
import 'package:planet_app/resources/sizes.dart';
import 'package:planet_app/resources/text_styles.dart';
import 'package:planet_app/widgets/clipped_image.dart';
import 'package:planet_app/widgets/name_widget.dart';
import 'package:palette_generator/palette_generator.dart';

class PlantsDetailsPage extends StatelessWidget {
  final Plants member;
  //final PaletteGenerator palette;

  PlantsDetailsPage({this.member});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            member.imagePath,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
            //palette.darkMutedColor.color.withOpacity(0.8),
          ),
          Positioned(
            top: size_60,
            right: size_20,
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
                size: size_40,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: size_40, right: size_20, bottom: size_20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: size_120,
                ),
                NameWidget(
                  name: member.name,
                  style: nameBigStyle.copyWith(
                    color:
                        //palette.lightMutedColor.color
                        Colors.white.withOpacity(0.7),
                  ),
                ),
                SizedBox(height: size_8),
                Text(member.occupation,
                    style: descriptionBoldStyle.copyWith(
                      color:
                          //palette.lightMutedColor.color
                          Colors.white.withOpacity(0.7),
                    )),
                SizedBox(height: size_20),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(member.description, style: descriptionStyle),
                  ),
                ),
                SizedBox(height: size_20),
                Text("Our Team Members".toUpperCase(),
                    style: descriptionBoldStyle),
                SizedBox(height: size_8),
                Container(
                  height: size_100,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            child: ClippedImage(
                                compactMode: true,
                                imagePath: plants[index].imagePath),
                          onTap: (){
                              print(plants[index].name);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlantsDetailsPage(
                                      member: member,
                                    )));
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: size_12);
                      },
                      itemCount: plants.length),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
