import 'package:adamur_haba/resources/colors.dart';
import 'package:adamur_haba/resources/custom_text.dart';
import 'package:adamur_haba/widgets/crypto.dart';
import 'package:adamur_haba/widgets/popular_tables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../resources/colors.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, color: grey,size: 30,),
        title: SvgPicture.asset("assets/images/logo.svg"),
        actions: [
                  Image.asset("assets/images/profile_pic.png")
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Popular Tables", style: CustomTextStyle.titletext,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        9,
                            (index) =>
                       PopularTables())

                  ],
                ),
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Material(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      width: 156,
                      height: 39,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Row(
                           children: [
                             Icon(Icons.bookmark_outline),
                             Text("Today's best")
                           ],
                        ),
                      ),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Icon(Icons.remove_red_eye,size: 20,),
                        SizedBox(width: 5,),
                        Text("My RoundTable")
                      ],
                    ),
                  )
                ],
              ),
              //section crypto
              Text("Crypto", style: CustomTextStyle.subtitle,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        10,
                            (index) => Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Crypto()
                        ))
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Text("Stonks"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        10,
                            (index) => Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Crypto()
                        ))
                  ],
                ),
              ),

              Container(
                height: 70,
                width: 400,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Row(
                    children: [
                      Expanded(child: Image.asset("assets/images/wallet.png")),

                     Expanded(child:  Image.asset("assets/images/rates.png")),
                     Expanded(child:  Image.asset("assets/images/bell.png")),
                     Expanded(child:  Image.asset("assets/images/hexagon.png")),

                    ],
                  ),
                )
              ),
              SizedBox(height: 20,)




            ],

          ),
        ),
      ),
    );
  }
}
