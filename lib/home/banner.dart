import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart'; // 引入头文件

class BannerDemo extends StatefulWidget {
  @override
  _BannerDemoState createState() => _BannerDemoState();
}

class _BannerDemoState extends State<BannerDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Container(
        height: 120.0,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            // 实现阴影效果
            offset: Offset(0.0, 16.0),
            color: Color.fromRGBO(140, 140, 140, 0.2),
            blurRadius: 8.0,
            spreadRadius: -9.0,
          ),
        ]),
        child: PhysicalModel(
            color: Colors.transparent, //设置背景底色透明
            borderRadius: BorderRadius.circular(8),
            clipBehavior: Clip.antiAlias, //注意这个属性
            child: Container(
              child: Swiper(
                itemCount: 3,
//                  viewportFraction: 0.8,
                scale: 0.9,//设置滑动图片间距
                itemBuilder: _swiperBuilder,
                pagination: new SwiperPagination(
                    alignment: Alignment.bottomRight,
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.white, //指示器未选中状态
                        activeColor: Color.fromRGBO(247, 116, 150, 1), //指示器选中颜色
                        size: 5
                    )),
                scrollDirection: Axis.horizontal,
              ),
            )),
      ),
      padding: EdgeInsets.all(10),
    );
  }
}
Widget _swiperBuilder(BuildContext context, int index) {
  return Image.network(
    "http://47.100.250.181:8080/images/37WKKVZF.jpg",
    fit: BoxFit.cover,
  );
}