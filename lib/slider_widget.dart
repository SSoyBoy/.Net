import 'package:flutter/material.dart';
class SliderDestination extends StatelessWidget {
  SliderDestination({Key? key}) : super(key: key);
  List<String> listImage = [
        "assets/image/820043.jpg",
        "assets/image/898336.png",
        "assets/image/901101.png",
        "assets/image/1074207.png"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: 300,
          child: Row(
            children: [
              //cách 1:
              ...listImage.map((e){
                return Container(
                margin: EdgeInsets.only(right: 10),
                width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(e),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                );
              }).toList()
              //cách 2:
              // for(int i=0;i< listImage.length;i++)
              //   Image.asset(listImage[i]),
              ],
            ),
        ),
    );

  }
}
