import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/colors.dart';
import '../resources/custom_text.dart';

class Crypto extends StatefulWidget {
  const Crypto({Key? key}) : super(key: key);

  @override
  State<Crypto> createState() => _CryptoState();
}

class _CryptoState extends State<Crypto> {
  @override
  Widget build(BuildContext context) {
    return
        Card(
          elevation: 20,
          shadowColor: Colors.white24,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),),
          child: Container(

            height: 120,
            width: 130,
            child: Row(

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 5,top: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color:greenIcon, borderRadius: BorderRadius.circular(8)),
                        child:SvgPicture.asset("assets/images/white_t.svg"),
                      ),
                      SizedBox(height:5),

                      Text("USDT", style: CustomTextStyle.subtitle),
                      SizedBox(height:5),
                      Text("148.50K", style: CustomTextStyle.minititle),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Column(
                    children: [
                      Container(
                        height: 20,
                        width: 32,
                        child: SvgPicture.asset("assets/images/red_line.svg"),),
                      Row(
                        children: [
                          SvgPicture.asset("assets/images/red_arrow.svg"),
                          SizedBox(width: 5,),
                          Text("10.5%")

                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        );
  }
}
