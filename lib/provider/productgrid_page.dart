import 'dart:html';
import 'dart:math';

import 'package:bai2/Store_Page.dart';
import 'package:bai2/provider/car_page.dart';
import 'package:bai2/model/product_model.dart';
import 'package:bai2/provider/chitietsp.dart';
import 'package:bai2/provider/productlist_page.dart';
import 'package:bai2/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../testlg.dart';

// class ProductGridPage extends StatelessWidget {
//   ProductGridPage({Key? key}) : super(key: key);
//   var _formKey = GlobalKey<FormState>();
//   ViewType _viewType = ViewType.grid;
//   int _crossAxisCount = 2;
//   double _aspectRatio = 1.5;
//   @override
//   _ProductGridPage createState() => _ProductGridPage();
//
// }
//
// class _ProductGridPage extends State<> {
//   int _crossAxisCount = 2;
//
//   double _aspectRatio = 1.5;
//
//   ViewType _viewType = ViewType.grid;
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     var pp = Provider.of<ProductProvider>(context);
//     if (pp.list.isEmpty){
//       pp.getList();
//     }
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text("View Switch/Toggle Example"),
//           actions: [
//             IconButton(
//               icon: Icon(
//                   _viewType == ViewType.list ? Icons.grid_on : Icons.view_list),
//               onPressed: () {
//                 if (_viewType == ViewType.list) {
//                   _crossAxisCount = 2;
//                   _aspectRatio = 1.5;
//                   _viewType = ViewType.grid;
//                 } else {
//                   _crossAxisCount = 1;
//                   _aspectRatio = 5;
//                   _viewType = ViewType.list;
//                 }
//                 setState(() {});
//               },
//             )
//           ],
//         ),
//         body: Container(
//             margin: const EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15.0),
//               color: Theme.of(context).canvasColor,
//               boxShadow: const [
//                 BoxShadow(
//                   color: Colors.grey,
//                   offset: Offset(0.0, 1.0), //(x,y)
//                   blurRadius: 6.0,
//                 ),
//               ],
//             ),
//           child: Container(
//               margin: const EdgeInsets.all(10),
//               child: GridView.count(
//                   crossAxisCount: _crossAxisCount,
//                   childAspectRatio: _aspectRatio,
//                   children: [
//                     ...pp.list.map((e) {
//                       return GridTile(
//                         child: (_viewType == ViewType.list)
//                             ? Container(
//                           color: Colors.cyan,
//                           margin: const EdgeInsets.all(5),
//                           child: Row(
//
//                             children: [
//                               ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.network(
//                                     e.image??"",
//                                   )),
//                               const SizedBox(
//                                 width: 5,
//                               ),
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     e.title??"",
//                                     style: const TextStyle(fontSize: 20),
//                                   ),
//                                   Text(
//                                     e.description??"",
//                                     style: const TextStyle(fontSize: 15),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                         )
//                             : Container(
//                           color: Colors.cyanAccent[100],
//                           margin: const EdgeInsets.all(5),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Expanded(
//                                   child: ClipRRect(
//                                       borderRadius: BorderRadius.circular(10),
//                                       child: Image.network(
//                                         e.image??"",
//                                       ))),
//                               Text(
//                                 e.title??"",
//                                 style: const TextStyle(fontSize: 15),
//                               ),
//                               Text(
//                                 "\$${e.price.toString()}",
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               ),
//                               ElevatedButton(
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: Colors.amberAccent,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(20), // <-- Radius
//                                     ),
//                                   ),
//                                   onPressed: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(builder: (context) => CarPage(
//                                         product: e,
//                                       )),
//                                     );
//                                   },
//                                   child: Text("Mua")),
//                               const SizedBox(
//                                 height: 10,
//                               )
//                             ],
//                           ),
//                         ),
//                       );
//
//                     }).toList()
//                   ]
//               )
//
//
//
//           ),)
//     );
//   }
//
// }



class ProductGridPage extends StatelessWidget {
  ProductGridPage({Key? key}) : super(key: key);
  var _formKey = GlobalKey<FormState>();
  ViewType _viewType = ViewType.grid;
  int _crossAxisCount = 2;
  double _aspectRatio = 1.5;


  @override
  //_ProductGridPage createState() => _ProductGridPage();
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    if (pp.list.isEmpty){
      pp.getList();
    }
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,

        actions: [
          IconButton(
              onPressed: (){
                showSearch(
                    context: context,
                    delegate: CustomSearch()
                );
              },
              icon: const Icon(Icons.search)),
          IconButton(
            icon: const Icon(Icons.store),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => StorePage(
                //     product: e,
                //   )),
                // );
              },
          ),
          IconButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductListPage()),
              );
            },
            icon: const Icon(Icons.view_list),
            //color: Colors.grey,

          ),
          // IconButton(
          //   icon: Icon(
          //       _viewType == ViewType.list ? Icons.grid_on : Icons.view_list),
          //   onPressed: () {
          //     if (_viewType == ViewType.list) {
          //       _crossAxisCount = 2;
          //       _aspectRatio = 1.5;
          //       _viewType = ViewType.grid;
          //     } else {
          //       _crossAxisCount = 1;
          //       _aspectRatio = 5;
          //       _viewType = ViewType.list;
          //     }
          //     //setState(() {});
          //   },
          // )
        ],
      ),

      body: Container(

        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Theme.of(context).canvasColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),

        child: Form(
          child: Container(

            margin: const EdgeInsets.all(10),
            child: GridView.count(
              crossAxisCount: _crossAxisCount,
              childAspectRatio: _aspectRatio,
              children: [
                ...pp.list.map((e) {
                    return GridTile(
                      child: (_viewType == ViewType.list)
                          ? Container(
                        color: Colors.cyanAccent,
                        margin: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  e.image??"",
                                )),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e.title??"",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  e.description??"",
                                  style: const TextStyle(fontSize: 15),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.cyanAccent.shade700.withOpacity(0.5),
                                  Colors.cyanAccent.withOpacity(1),
                                  Colors.cyanAccent.shade100.withOpacity(0.3),
                                ]
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 0.4), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10)
                        ),
                        margin: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      e.image??"",
                                    ))),
                            Text(
                              e.title??"",
                              style: const TextStyle(fontSize: 11),
                            ),
                            Text(
                              "\$${e.price.toString()}",

                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 12),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.amberAccent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20), // <-- Radius
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => CarPage(
                                             product: e,
                                          )),
                                        );
                                      },
                                      child: Text("Mua")),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.amberAccent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20), // <-- Radius
                                        ),
                                      ),
                                      onPressed: () => (e) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Chitiet(
                                            product: e,
                                          )),
                                        );
                                      },
                                      child: Text("View")),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                    ),
                    );

                 }).toList()
             ]
            )



          ),
        ),
      ),

    );
  }

}
class CustomSearch extends SearchDelegate {
  List<String> allData = [
    'America',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));

  }
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if(item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        }
    );
  }
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if(item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        }
    );
  }
}
enum ViewType { grid, list }
