import 'package:bai2/model/product_model.dart';
import 'package:bai2/provider/product_provider.dart';
import 'package:bai2/provider/productgrid_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class StorePage extends StatelessWidget {
  final ProductModel product;
  const StorePage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> ds = [];
    if (ds.isEmpty) {
      ds.add(product);
    } else {
      ds.forEach((element) {
        if (product.title != element.title) {
          ds.add(product);
        }
      });
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[100],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.back_hand),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.store),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: ds.length,
          itemBuilder: (BuildContext context, index) {
            final dt = ds[index];
            return Container(
              child: Padding(
                padding:
                EdgeInsets.only(top: 32, bottom: 32, left: 16, right: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      dt.image ?? "",
                      height: 56,
                      width: 56,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 16, bottom: 32, left: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            //pp.list[index].title ?? "",
                            //show[index].title ?? "",
                            dt.title ?? "",
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 16),
                          ),
                          Text(
                            //pp.list[index].price.toString() ?? "",
                            dt.price.toString() ?? "",
                            style: const TextStyle(
                                fontSize: 20, color: Colors.orange),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}