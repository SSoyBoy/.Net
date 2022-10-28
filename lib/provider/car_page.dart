import 'package:bai2/model/product_model.dart';
import 'package:bai2/provider/product_provider.dart';
import 'package:bai2/provider/productgrid_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarPage extends StatelessWidget {
  final ProductModel product;
  const CarPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image.network(
                  product.image??"",
                  height: 150,
                  width: 100 ,
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title??"",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "\$${product.price.toString()}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                          onPressed: () {

                          },
                          child: Text("Add to cart"))
                    ],
                  ),
                ))

              ],
            ),
          ),
        ),
      ),
      // body: ListView(
      //
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     ...pp.list.map((e) {
      //
      //       return Image.network(e.image??"");
      //     }).toList()
      //   ]
      // )
    );
  }
}
