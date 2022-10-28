import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bai2/slider_widget.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bai2/hashtag_widget.dart';


class Diadiem1 extends StatelessWidget {
  Diadiem1({Key? key}) : super(key: key);
  String content = " kadjaljdsaslsdsjssassslsjdsasssjdsslssassjsdslsassdsjs";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // child: SingleChildScrollView(
        children: [
          //buildBanner(context),
          SliderDestination(),
          HashTagDestination(),
          buildTitle(context),
          buildActionButtons(context),
          buildDescription(context),
        ],
      ),
    );
  }
  buildActionButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:40.0,right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildButton(context, "call", Icons.phone,Colors.blueAccent,),
          buildButton(context, "route", Icons.near_me,Colors.orange),
          buildButton(context, "Share", Icons.share,Colors.pink),
        ],
      ),
    );
  }
  buildBanner(BuildContext context){
    Image.asset("assets/image/anh3.jpg");
  }

  buildTitle(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                  "Man to dai mantodai",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  )
              ),
              Text(
                "Hdr dan hatdorodan",
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.star,color: Colors.red)
            ],
          )
        ],
      ),
    );
  }

  buildButton(BuildContext context, String title, IconData iconData, Color color){
    return Column(
      children: [
        Icon(iconData,color: Colors.blueAccent,size: 30,),
        Text(title,style: TextStyle(
          color: color,
          fontSize: 15,
        )),
      ],
    );
  }

  buildDescription(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Text(
        content,
        textAlign: TextAlign.justify,
      ),
    );
  }
}