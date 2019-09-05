import 'package:flutter/material.dart';
import 'Home/home_page.dart';
import 'channel/channel_page.dart';
import 'dynamic/dynamic_page.dart';
import 'membershop/membershop.dart';
import 'home/drawer.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() =>
      new _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final List<Widget> list = List();
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    list
      ..add(HomePage())
      ..add(HomePage())
      ..add(HomePage())

//      ..add(ChannelPage())
//      ..add(DynamicPage())
      ..add(MembershopPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: Stack(
          alignment: Alignment(-0.8, -0.0),
          children: <Widget>[
            SizedBox(
              child:Container(
                child: GestureDetector(
                  child: ClipOval(
                    child:Image.network(
                      "http://47.100.250.181:8080/images/37WKKVZF.jpg",
                      width: 30.0,
                      height: 30.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  onTap:(){
                    _scaffoldKey.currentState.openDrawer();
                    debugPrint('222');
                  },//打开开始方向抽屉布局
                ),
              ),
            ),
            Positioned(
              right:10,
              top: 17,
              child: Container(
                width: 9,
                height: 9,
                alignment:Alignment(0.0,1.0),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1)),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Expanded(
            child: Container(
              height: 30.0,
              margin: EdgeInsets.only(top: 12, bottom: 12,left: 50),
              alignment: Alignment(0.0,0.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                  ),
                  Text('周杰伦窝窝头',style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16
                  ),)
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
            ),
          ),
          IconButton(
            icon: Icon(IconData(0xe630, fontFamily: 'MyIcons')),
            tooltip: '右侧搜索按钮',
            onPressed: () => debugPrint('游戏'),
          ),
          IconButton(
            icon: Icon(IconData(0xe642, fontFamily: 'MyIcons')),
            tooltip: '右侧搜索按钮',
            onPressed: () => debugPrint('文件'),
          ),
          IconButton(
            icon: Icon(
              IconData(0xe610, fontFamily: 'MyIcons'),
            ),
            tooltip: '右侧搜索按钮',
            onPressed: () => debugPrint('消息'),
          )
        ],
        elevation: 0.0,
      ),
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.red,
          iconSize: 20,
          items: [
            BottomNavigationBarItem(
                icon: Icon(IconData(0xe65f, fontFamily: 'MyIcons')),
                activeIcon: Icon(IconData(0xe660, fontFamily: 'MyIcons')),
                title: Text(
                  "首页",
                  style: TextStyle(fontSize: 11),
                )),
            BottomNavigationBarItem(
                icon: Icon(IconData(0xe662, fontFamily: 'MyIcons')),
                activeIcon: Icon(IconData(0xe661, fontFamily: 'MyIcons')),
                title: Text(
                  "频道",
                  style: TextStyle(fontSize: 11),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.toys),
                activeIcon: Icon(Icons.toys),
                title: Text(
                  "动态",
                  style: TextStyle(fontSize: 11),
                )),
            BottomNavigationBarItem(
                icon: Icon(IconData(0xe788, fontFamily: 'MyIcons')),
                activeIcon: Icon(IconData(0xe789, fontFamily: 'MyIcons')),
                title: Text(
                  "会员购",
                  style: TextStyle(fontSize: 11),
                )),
          ]),
      drawer: DrawerDemo(),
    );
  }
}
