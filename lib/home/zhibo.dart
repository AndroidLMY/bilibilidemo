import 'package:flutter/material.dart';
import 'package:bilibilidemo/home/banner.dart';
import 'package:flutter/widgets.dart';
import '../model/home_images.dart';
import '../model/post.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ZhiBo extends StatefulWidget {
  @override
  _ZhiBoState createState() => _ZhiBoState();
}
class _ZhiBoState extends State<ZhiBo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
//        width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                BannerDemo(),
                GridViewDemo(),
                Container(
                  height: 1,
                  color: Colors.grey[200],
                ),
                Home03(),
                Container(
                  height: 1,
                  color: Colors.grey[200],
                ),
                Home04(),
                Home05(),
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child:Container(
          height: 25,
          width: 25,
          child: Image.asset('images/zhibo.png',),
        ),
        tooltip: '我要直播',//长按提示的文字
        foregroundColor: Colors.red,//设置显示图标或者文本的颜色//前提是子child没有设置
        backgroundColor: Color.fromRGBO(250, 114, 152,1),//设置按钮的背景色
//          heroTag: ,//类似于一个标识
        elevation: 10.0,//设置阴影
        highlightElevation: 50.0,
        shape: const CircleBorder(),
//          isExtended: true,
        onPressed: (){
          debugPrint('我要直播');
          Fluttertoast.showToast(
              msg: "我要直播",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIos: 1,
              backgroundColor: Colors.black54,
              textColor: Colors.white,
              fontSize: 16.0
          );
        },
      ),
    );
  }
}
class GridViewDemo extends StatefulWidget {
  @override
  _GridViewDemoState createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  Widget _gridviewbuilder(BuildContext context, int index) {
    return Container(
      child: Column(
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(bottom: 6.0),
            child: new CircleAvatar(
              radius: 20.0,
              child: new Icon(homeimages[index].imageurl, color: Colors.white),
              backgroundColor: Colors.green,
            ),
          ),
          new Container(
            child: new Text(
              homeimages[index].name,
              style: new TextStyle(fontSize: 10),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      // 处理嵌套报错
      itemCount: homeimages.length,
      physics: new NeverScrollableScrollPhysics(),
      //禁用GridView自身的滑动来解决和SingleChildScrollView滑动冲突
      itemBuilder: _gridviewbuilder,
      padding: EdgeInsets.only(left: 10, right: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //横轴元素个数
          crossAxisCount: 5,
          //纵轴间距
//          mainAxisSpacing: 10.0,
          //横轴间距
//          crossAxisSpacing: 10.0,
          //子组件宽高长度比例
          childAspectRatio: 1.0),
    );
  }
}


class Home03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Container( //我的关注8-31英雄联盟直播了10云顶之弈
                  child: Text('我的关注', style: TextStyle(
                      fontSize: 17,
                      color: Colors.black
                  ),),
                  padding: EdgeInsets.only(left: 20),
                ),
                Container(
                  child: Text('8-31', style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey
                  ),),
                  padding: EdgeInsets.only(left: 5, top: 5),
                ),
                Container(
                  child: Text('英雄联盟', style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                  ),),
                  padding: EdgeInsets.only(left: 5, top: 5),
                ),
                Container(
                  child: Text('直播了lol云顶之弈', style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey

                  ),),
                  padding: EdgeInsets.only(left: 5, top: 5),
                ),
              ],
            ),
          ),
          Container(
            child: Icon(Icons.arrow_forward_ios, color: Colors.grey[500],
            ),
            padding: EdgeInsets.only(right: 10),
          ),
        ],
      ),
    );
  }
}

class Home04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Container( //我的关注8-31英雄联盟直播了10云顶之弈
                  child: Text('推荐直播', style: TextStyle(
                      fontSize: 17,
                      color: Colors.black
                  ),),
                  padding: EdgeInsets.only(left: 20),
                ),
              ],
            ),
          ),
          Container(

            child: Row(
              children: <Widget>[
                Text('换一换'),
                Icon(Icons.refresh, color: Colors.grey[500],
                )
              ],
            ),
            padding: EdgeInsets.only(right: 10),
          ),
        ],
      ),
    );
  }
}

class Home05 extends StatefulWidget {
  @override
  _Home05State createState() => _Home05State();
}

class _Home05State extends State<Home05> {
  Widget _gridviewbuilder(BuildContext context, int index) {
    return
      Material(
//        borderRadius: BorderRadius.circular(8),
//        clipBehavior: Clip.antiAlias, //注意这个属性
       child: Stack(
         children: <Widget>[
           ConstrainedBox(
             child: PhysicalModel(
               color: Colors.transparent, //设置背景底色透明
               borderRadius: BorderRadius.circular(8),
               clipBehavior: Clip.antiAlias, //注意这个属性
               child:Image.network(post[index].imageurl,fit: BoxFit.cover),
           ),
             constraints: new BoxConstraints.expand(),//嵌套BoxConstraints使充满父布局
           ),
           Positioned(
             left: 5,
             bottom: 5,
             child:  Text('哈哈哈',style: TextStyle(
                 color: Colors.white,
                 fontSize: 13
             )),
           ),
           Positioned(
             bottom: 5,
             right: 5,
             child: Row(
               children: <Widget>[
                 Icon(Icons.account_circle,color: Colors.white,size: 15,),
                 Text('19009',style: TextStyle(
                     color: Colors.white,
                     fontSize: 13
                 )),
               ],
             ),
           )
         ],
       ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      // 处理嵌套报错
      itemCount: post.length,
      physics: new NeverScrollableScrollPhysics(),
      //禁用GridView自身的滑动来解决和SingleChildScrollView滑动冲突
      itemBuilder: _gridviewbuilder,
      padding: EdgeInsets.only(left: 10, right: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //横轴元素个数
          crossAxisCount: 2,
          //纵轴间距
          mainAxisSpacing: 10.0,
          //横轴间距
          crossAxisSpacing: 10.0,
          //子组件宽高长度比例
          childAspectRatio: 1.7),
    );
  }
}


