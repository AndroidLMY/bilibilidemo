import 'package:flutter/material.dart';

class DynamicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FindPage'),),
      body: Center(
        child: GridViewBuilderDemo(),

      ),
    );
  }
} //count extent的集合

class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridviewbuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        "http://47.100.250.181:8080/images/37WKKVZF.jpg",
        fit: BoxFit.cover,
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      itemCount: 10,
      itemBuilder: _gridviewbuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //横轴元素个数
          crossAxisCount: 5,
          //纵轴间距
          mainAxisSpacing: 20.0,
          //横轴间距
          crossAxisSpacing: 10.0,
          //子组件宽高长度比例
          childAspectRatio: 1.0),

    );
  }
}