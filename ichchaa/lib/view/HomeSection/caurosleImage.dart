import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';

class CauroselImage extends StatelessWidget {
  final _height = (Get.height - 100) * 0.35;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: double.infinity,
      child: Swiper(
        autoplay: true,
        viewportFraction: .9,
        scale: 0.8,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset("assets/Image1.jpeg",fit: BoxFit.fill);
        },
        pagination: SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: SwiperCustomPagination(
              builder: (BuildContext context, SwiperPluginConfig config) {
            return ConstrainedBox(
              constraints: BoxConstraints.expand(height: 5, width: 100),
              child: Row(
                children: [

                  indicator(0, config),
                  indicator(1, config),
                  indicator(2, config),
                  
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  Container indicator(int index, config) {
    return Container(
      height: 5,
      margin: EdgeInsets.only(right: 5),
      width: 20,
      decoration: BoxDecoration(
        color: config.activeIndex == index ? Colors.black : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
