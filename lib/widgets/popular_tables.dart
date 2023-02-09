import 'package:adamur_haba/resources/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/colors.dart';

class PopularTables extends StatefulWidget {
  const PopularTables({Key? key}) : super(key: key);

  @override
  State<PopularTables> createState() => _PopularTablesState();
}

class _PopularTablesState extends State<PopularTables> {
  @override
  Widget build(BuildContext context) {
    return
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: const BoxDecoration(
                      color: Colors.black12,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/images/people_icon.png"),),
                  Positioned(
                    bottom: -3,
                    right: -4,

                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: PhysicalModel(
                        elevation: 2,
                        color: whiteText,
                        borderRadius: BorderRadius.circular(4),
                        child: Center(
                            child: Icon(
                              Icons.explore_sharp,
                              color: black,
                              size: 18,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height:10),
              Text("#DeFi", style: CustomTextStyle.subtitle,),
              SizedBox(height:5),
              Text("1355 people", style: CustomTextStyle.minititle),
            ],
          ),
    );
  }
}
