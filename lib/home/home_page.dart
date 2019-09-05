import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:bilibilidemo/home/zhibo.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: TabBar(
            isScrollable: true,
            //设置tab文字得类型
            labelStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            //设置tab选中得颜色
            labelColor: Colors.red,
            //设置tab未选中得颜色
            unselectedLabelColor: Colors.black45,
            //未选中状态的图标颜色
            indicatorColor: Colors.black54,
            //选中下面的指示器颜色
            indicatorSize: TabBarIndicatorSize.label,
            //指示器的长度和lable才长度保持一致
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(
                text: '直播',
              ),
              Tab(
                text: '推荐',
              ),
              Tab(
                text: '热门',
              ),
              Tab(
                text: '追番',
              ),
              Tab(
                text: '影视',
              ),
              Tab(
                text: '70年',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ZhiBo(),
            Text('222'),
            Text('333'),
            Text('444'),
            Text('555'),
            Text('666'),
          ],
        ),
//        drawer: DrawerDemo(),
      ),
    );
  }
}


