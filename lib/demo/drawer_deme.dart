import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //屏幕左边抽屉
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName:
                Text('Baoxin', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text(
              'skyccp@qq.com',
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'), //头像图片
            ),
            decoration: BoxDecoration(
                //背景图片
                color: Colors.blue[400],
                image: DecorationImage(
                    image: NetworkImage(
                        'https://sf3-scmcdn-tos.pstatp.com/obj/goofy/xigua_fe/xigua_video_web_pc/static/media/bg.5cbd1147.png'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.blue[400].withOpacity(0.5),
                        BlendMode.hardLight))), //背景图片混合模式
          ),
          ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context), //点击菜单关闭抽屉
          ),
          ListTile(
            title: Text(
              'Favorite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context), //点击菜单关闭抽屉
          ),
          ListTile(
            title: Text(
              'Settings',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context), //点击菜单关闭抽屉
          )
        ],
      ),
    );
  }
}
