import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ichchaa/Controller/SearchController.dart';
import 'package:ichchaa/Loading/ItemPage.dart';
import 'package:ichchaa/view/SearchView/searchby_header.dart';

class Search extends GetWidget<SearchController> {
  // List _searchList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            floating: true,
            pinned: false,
            delegate: SearchByHeader(
              stackPaddingTop: 170,
              titlePaddingTop: 0,
              // title: RichText(
              //   text: TextSpan(
              //     children: [
              //       TextSpan(
              //         text: "Search",
              //         style: TextStyle(
              //           fontWeight: FontWeight.bold,
              //           color: Colors.green,
              //           fontSize: 24,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              stackChild: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 3,
                    ),
                  ],
                ),
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  controller: controller.searchText.value,
                  minLines: 1,
                  // focusNode: _node,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    hintText: 'Search',
                    filled: true,
                    fillColor: Theme.of(context).cardColor,
                    suffixIcon: IconButton(
                      onPressed: controller.searchText.value == null
                          ? null
                          : () {
                              controller.textClear();
                            },
                      icon: Icon(Icons.clear,
                          color: controller.searchText.value != null
                              ? Colors.red
                              : Colors.grey),
                    ),
                  ),
                  onSubmitted: (String value) {
                    controller.searchBoxValue(value);
                  },
                ),
              ),
            ),
          ),
          // SliverToBoxAdapter(
          // child: _searchTextController.text.isNotEmpty && _searchList.isEmpty ?
          //        Column(
          //           children: [
          //             SizedBox(
          //               height: 50,
          //             ),
          //             Icon(
          //               Icons.search,
          //               size:60,
          //             ),
          //             SizedBox(
          //               height: 50,
          //             ),
          //             Text(
          //               'No results found',
          //               style: TextStyle(
          //                   fontSize: 30, fontWeight: FontWeight.w700),
          //             ),
          //           ],
          //         )
          //       : GridView.count(
          //           physics: NeverScrollableScrollPhysics(),
          //           shrinkWrap: true,
          //           crossAxisCount: 2,
          //           childAspectRatio: 240 / 420,
          //           crossAxisSpacing: 8,
          //           mainAxisSpacing: 8,
          //           children: List.generate(
          //               _searchTextController.text.isEmpty
          //                   ? productsList.length
          //                   : _searchList.length, (index) {
          //             return ChangeNotifierProvider.value(
          //               value: _searchTextController.text.isEmpty
          //                   ? productsList[index]
          //                   : _searchList[index],
          //               child: FeedProducts(),
          //             );
          //           }),
          //         ),
          // ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.blueGrey[100],
              margin: EdgeInsets.symmetric(vertical: 20),
              child: GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                      padding: const EdgeInsets.only(top: 5.0),
                      child: ItemPageLoading(shop: true),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
