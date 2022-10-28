import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class diadiem extends StatelessWidget {
  const diadiem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/image/820043.jpg"),
            Padding(
              padding: const EdgeInsets.only(left:15,right:15,top:15),
              child: Row(
                children: [
                  Text(
                    "Ha Long Bay campground",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),

                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "TP.Huế, Thừa Thiên Huế, Viet Nam",
                        style: TextStyle(
                          color: Colors.red[300],
                          fontSize: 15,
                        ),

                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.red[900],
                      ),

                      Text(
                        "43",
                        style: TextStyle(
                          color: Colors.red[300],
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )



                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [

                    buildIcon(context,Icons.phone,Colors.blue),
                    Text(
                      "CALL",
                      style: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 10,
                      ),

                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      size: 40,
                      color: Colors.blue[400],
                    ),
                    Text(
                      "SHARE",
                      style: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 10,
                      ),

                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.location_history,
                      size: 40,
                      color: Colors.blue[400],
                    ),
                    Text(
                      "ROUTE",
                      style: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 10,
                      ),

                    ),
                  ],
                )


              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Huế là thành phố tỉnh lỵ của tỉnh Thừa Thiên Huế, Việt Nam. Huế từng là kinh đô của Việt Nam dưới triều Tây Sơn và triều Nguyễn. Hiện nay, thành phố là một trong những trung tâm về văn hóa – du lịch, y tế chuyên sâu, giáo dục đào tạo, khoa học công nghệ của Miền Trung - Tây Nguyên và cả nước.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }

  buildIcon(BuildContext context, IconData icon, Color color) {
    return Icon(
      icon,
      size: 40,
      color: color,
    );
  }
}