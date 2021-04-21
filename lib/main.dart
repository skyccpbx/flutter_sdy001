import 'package:flutter/material.dart';
import './demo/drawer_deme.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 去掉右上角debug
      //home: Home(), // 默认需要显示的部件内容
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5)), //tap点击背景色
      //AppBar 背景颜色
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            centerTitle: true, //AppBar 标题兼容安卓居中
            // leading: IconButton(
            //   //appBar左边小部件
            //   icon: Icon(Icons.menu),
            //   tooltip: 'Navigation',
            //   onPressed: () => debugPrint(
            //       'Navigation button is pressed'), //顶部左导航点击事件（console输出）
            // ),
            title: Text('Flutter'),
            actions: [
              //appBar右边小部件
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'search',
                onPressed: () => debugPrint(
                    'Search button is pressed'), //顶部右边航点击事件（console输出）
              ),
              IconButton(
                //appBar左边小部件2
                icon: Icon(Icons.more_horiz),
                tooltip: 'More',
                onPressed: () =>
                    debugPrint('More button is pressed'), //顶部右边航点击事件（console输出）
              )
            ], //appBar右边小部件
            elevation: 6.0, //AppBar 底部阴影
            bottom: TabBar(
              unselectedLabelColor: Colors.blue[100], //tab未选中颜色
              indicatorColor: Colors.white, //tab选中下划线颜色
              indicatorSize: TabBarIndicatorSize.tab, //tab选中下划线长度
              indicatorWeight: 2.0, //tab选中下划线粗细
              tabs: [
                Tab(
                  icon: Icon(Icons.local_activity),
                ),
                Tab(
                  icon: Icon(Icons.dashboard_customize),
                ),
                Tab(
                  icon: Icon(Icons.view_quilt),
                ),
                Tab(
                  icon: Icon(Icons.directions_bike_sharp),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              //tap标签内容 视图
              ListViewDemo(),
              LayoutDemo(),
              ViewDemo(),
              SliverDemo(),
            ],
          ), //ListViewDemo(), //挂载组件
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
