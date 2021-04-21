import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  //flutter 布局
  @override
  Widget build(BuildContext context) {
    return Container(
      //flex box
      //padding: EdgeInsets.all(13.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconBadge(
            Icons.pool,
            //size: 64.0,
          ),
          //Padding(padding: EdgeInsets.all(3.0)),
          IconBadge(
            Icons.beach_access,
            size: 64.0,
          ),
          IconBadge(
            Icons.airplanemode_active,
            //size: 64.0,
          ),
        ], // 图标小部件
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 44,
      height: size + 44,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
