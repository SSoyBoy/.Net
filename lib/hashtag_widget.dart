import 'package:flutter/material.dart';
class HashTagDestination extends StatelessWidget {
  HashTagDestination({Key? key}) : super(key: key);
  List<String> hashList = [
    '#Dai Noi1',
    '#Dai Noi2',
    '#Dai Noi3',
    '#Dai Noi4',
    '#Dai Noi5',
    '#Dai Noi6',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
      children: [
        ...hashList.map((e){
          return Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Text(
              e,
              style: TextStyle(fontSize: 20, color: Colors.pinkAccent),
            ),
          );
        }).toList()
      ],
    )
    );
  }
}
