
import 'package:flutter/material.dart';
import 'package:ichchaa/Utils/UniversalColors.dart';
class SearchByHeader extends SliverPersistentHeaderDelegate {
  final double flexibleSpace;
  final double backGroundHeight;
  final double stackPaddingTop;
  final double titlePaddingTop;
  // final Widget title;
  final Widget subTitle;
  // final Widget leading;
  final Widget action;
  final Widget stackChild;

  SearchByHeader({
    this.flexibleSpace = 220,
    this.backGroundHeight = 0,
    @required this.stackPaddingTop,
    this.titlePaddingTop = 0,
    // @required this.title,
    this.subTitle,
    // this.leading,
    this.action,
    @required this.stackChild,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var percent = shrinkOffset / (maxExtent - minExtent);
    double calculate = 1 - percent < 0 ? 0 : (1 - percent);
    return SizedBox(
      height: maxExtent,
      child: Stack(
        children: <Widget>[
          Container(
            // height: minExtent + ((backGroundHeight - minExtent) * calculate),
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
           gradient: gradianColor,
            ),
        
          ),
          
          // Positioned(
          //   top: 32,
          //   left: 10,
          //   child: Material(
          //     borderRadius: BorderRadius.circular(10.0),
          //     color: Colors.grey.shade300,
          //     child: InkWell(
          //       borderRadius: BorderRadius.circular(10.0),
          //       splashColor: Colors.grey,
          //       onTap: () {},
          //       child: Container(
          //         height: 40,
          //         width: 40,
          //         clipBehavior: Clip.antiAlias,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(10.0),
          //             image: DecorationImage(
          //               image: NetworkImage(
          //                 'https://cdn1.vectorstock.com/i/thumb-large/62/60/default-avatar-photo-placeholder-profile-image-vector-21666260.jpg',
          //               ),
          //               fit: BoxFit.cover,
          //             )),
          //       ),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   left: MediaQuery.of(context).size.width * 0.35,
          //   top: titlePaddingTop * calculate + 27,
          //   bottom: 0.0,
          //   child: Container(
          //     padding: EdgeInsets.symmetric(horizontal: 24),
          //     width: MediaQuery.of(context).size.width,
          //     child: Row(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: <Widget>[
          //         SizedBox(),
          //         Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisSize: MainAxisSize.min,
          //           children: <Widget>[
          //             Transform.scale(
          //               alignment: Alignment.centerLeft,
          //               scale: 1 + (calculate * .5),
          //               child: Padding(
          //                 padding: EdgeInsets.only(top: 14 * (1 - calculate)),
          //                 // child: title,
          //               ),
          //             ),
          //             if (calculate > .5) ...[
          //               SizedBox(height: 10),
          //               Opacity(
          //                 opacity: calculate,
          //                 child: subTitle ?? SizedBox(),
          //               ),
          //             ]
          //           ],
          //         ),
          //         Expanded(child: SizedBox()),
          //         Padding(
          //           padding: EdgeInsets.only(top: 14 * calculate),
          //           child: action ?? SizedBox(),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Positioned(
            top:120,
            child: Opacity(
              opacity: calculate,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: stackChild,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => flexibleSpace;

  @override
  double get minExtent => kToolbarHeight + 25;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
