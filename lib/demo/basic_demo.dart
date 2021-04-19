import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = '习近平';
  final String _title = '新时代的伟大变革';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      color: Color.fromRGBO(255, 255, 255, 0.3),
      child: Column(
        children: [
          Text(
            '《$_author》$_title — 党的十八届三中全会以来以习近平同志为核心的党中央推进全面深化改革纪实.又是春潮拍岸时。当年一笔一画勾勒的改革蓝图，已化作大潮涌动、千帆竞发，云卷云舒、峰峦莽苍的壮美画卷。',
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            style: _textStyle,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          Container(
            child: Icon(Icons.pool,
                size: 40.0, color: Color.fromRGBO(3, 54, 255, 1.0)),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.only(left: 10.0),
            width: 90.0,
            height: 90,
          )
        ],
      ),
    );
  }
}
