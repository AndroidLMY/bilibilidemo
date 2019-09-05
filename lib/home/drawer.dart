
import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: HomeBuilder.homeDrawer(context),
    );
  }
}

class HomeBuilder {
  static Widget homeDrawer(BuildContext context) {
    return
    Scaffold(
      body:Stack(
        children: <Widget>[
          ListView(padding: const EdgeInsets.only(), children: <Widget>[
            _drawerHeader(),
            Padding(
              padding: EdgeInsets.only(top: 1),
              child: Container(
                height: 2,
                color: Colors.grey[200],
              ),
            ),
            DrawerContent(),//头部布局和条目中间的布局
            DrawerItem(),
            //侧滑栏的条目
          ]),
        ],
      ) ,
      bottomSheet: Container(
        height: 50,
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Icon(Icons.settings,color: Colors.grey,),
                  Text('设置',style: TextStyle(
                      color: Colors.black
                  ),),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Icon(Icons.palette,color: Colors.grey,),
                  Text('主题'),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Icon(Icons.brightness_2,color: Colors.grey,),
                  Text('夜间'),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
  //侧滑栏的头部布局
  static Widget _drawerHeader() {
    return new UserAccountsDrawerHeader(
      margin: EdgeInsets.zero,
      accountName:  Row(
        children: <Widget>[
          Text(
            "被子不够长",
            style:TextStyle(color: Colors.black),
          ),
          Container(
            decoration: BoxDecoration(//使用装饰来设置圆角和边框
              border: new Border.all(color: Color(0xFFFF0000), width: 0.5), // 边色与边宽度
              color:Colors.white ,
              //        borderRadius: new BorderRadius.circular((20.0)), // 圆角度
              borderRadius: new BorderRadius.circular(4), // 也可控件一边圆角大小
            ),
            padding: EdgeInsets.only(left: 2,right: 2,top: 0.1),
            margin:EdgeInsets.only(left: 10),
            child: Text(
              "lv3",
              style:TextStyle(color: Colors.redAccent),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: new Border.all(color: Color(0xFFFF0000), width: 0.5), // 边色与边宽度
              color: Color(0xFFFF0000), // 底色
              //        borderRadius: new BorderRadius.circular((20.0)), // 圆角度
              borderRadius: new BorderRadius.circular(4), // 也可控件一边圆角大小
            ),
            padding: EdgeInsets.only(left: 2,right: 2,bottom: 1),
            margin:EdgeInsets.only(left: 10),
            child: Text(
              "正式会员",
              style:TextStyle(color: Colors.white,fontSize: 10),
            ),
          ),
        ],
      ),
      accountEmail: Row(
        children: <Widget>[

          Text(
            "B币:\u30000.0",
//        style: HStyle.bodyWhite(),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "硬币:\u3000390.0",
//        style: HStyle.bodyWhite(),
          )
        ],
      ) ,
      currentAccountPicture: ClipOval(
        child:Image.asset(
          "images/icon.jpg",
          width: 30.0,
          height: 30.0,
          fit: BoxFit.cover,
        ),
      ),
      onDetailsPressed: () {},
      otherAccountsPictures: <Widget>[

        Container(
          decoration: BoxDecoration(
            border: new Border.all(color: Colors.grey, width: 0.5), // 边色与边宽度
            color: Colors.white, // 底色
            //        borderRadius: new BorderRadius.circular((20.0)), // 圆角度
            borderRadius: new BorderRadius.circular(40), // 也可控件一边圆角大小
          ),
          child: ClipOval(
            child:Icon(Icons.account_balance_wallet,color: Colors.grey,),

          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: new Border.all(color: Colors.grey, width: 0.5), // 边色与边宽度
            color: Colors.white, // 底色
            //        borderRadius: new BorderRadius.circular((20.0)), // 圆角度
            borderRadius: new BorderRadius.circular(40), // 也可控件一边圆角大小
          ),
          child: ClipOval(
            child:Icon(Icons.filter_center_focus,color: Colors.grey,),
          ),
        ),
      ],
    );
  }
}

class DrawerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 10,
            left: 10,
            child:Text('我的大会员',style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),),
          ),
          Positioned(
            top: 10,
            left: 90,
            child:Text('了解更多权益'),
          ),
          Positioned(
            top: 30,
            left: 10,
            child:Text('开通大会员畅看番剧国创'),
          ),
          Positioned(
            right: 10,
            top: 20,
            child:Icon(Icons.arrow_forward_ios,color: Colors.grey,),
          ),
        ],
      ),
    );
  }
}

//侧滑栏的Item
class DrawerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 1),
          child: Container(
            height: 2,
            color: Colors.grey[200],
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading:Icon(Icons.home,color: Colors.grey,),
            title: new Text('首页'),
            onTap: ()=>Navigator.pop(context),//处理侧滑栏中选项的点击事件
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading:Icon(Icons.history,color: Colors.grey,),
            title: new Text('历史记录'),
            onTap: ()=>Navigator.pop(context),//处理侧滑栏中选项的点击事件
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading:Icon(IconData(0xe642, fontFamily: 'MyIcons')),

            title: new Text('下载管理'),
            onTap: ()=>Navigator.pop(context),//处理侧滑栏中选项的点击事件
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading:Icon(Icons.star_border,color: Colors.grey,),
            title: new Text('我的收藏'),
            onTap: () => {},
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading:Icon(Icons.play_circle_outline,color: Colors.grey,),
            title: new Text('稍后再看'),
            onTap: ()=>Navigator.pop(context),//处理侧滑栏中选项的点击事件
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 1),
          child: Container(
            height: 2,
            color: Colors.grey[200],
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading:Icon(Icons.share,color: Colors.grey,),
            title: new Text('投稿'),
            onTap: ()=>Navigator.pop(context),//处理侧滑栏中选项的点击事件
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading:Icon(Icons.lightbulb_outline,color: Colors.grey,),
            title: new Text('创作中心'),
            onTap: ()=>Navigator.pop(context),//处理侧滑栏中选项的点击事件
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading:Icon(Icons.flag,color: Colors.grey,),
            title: new Text('热门活动'),
            onTap: ()=>Navigator.pop(context),//处理侧滑栏中选项的点击事件
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 1),
          child: Container(
            height: 2,
            color: Colors.grey[200],
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading:Icon(Icons.camera_alt,color: Colors.grey,),
            title: new Text('直播中心'),
            onTap: ()=>Navigator.pop(context),//处理侧滑栏中选项的点击事件
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading:Icon(Icons.settings,color: Colors.grey,),
            title: new Text('免流量服务'),
            onTap: ()=>Navigator.pop(context),//处理侧滑栏中选项的点击事件
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading:Icon(Icons.settings,color: Colors.grey,),
            title: new Text('青少年模式'),
            onTap: ()=>Navigator.pop(context),//处理侧滑栏中选项的点击事件
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading:Icon(Icons.reorder,color: Colors.grey,),
            title: new Text('我的订单'),
            onTap: ()=>Navigator.pop(context),//处理侧滑栏中选项的点击事件
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading:Icon(Icons.shop,color: Colors.grey,),
            title: new Text('会员购中心'),
            onTap: ()=>Navigator.pop(context),//处理侧滑栏中选项的点击事件
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading:Icon(Icons.local_laundry_service,color: Colors.grey,),
            title: new Text('联系客服'),
            onTap: ()=>Navigator.pop(context),//处理侧滑栏中选项的点击事件
          ),
        ),
      ],
    );
  }
}
