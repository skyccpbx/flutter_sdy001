import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          //title: Text('BAO XIN'),
          backgroundColor: Colors.black,
          floating: true,
          expandedHeight: 178.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'BAO XIN FLUTTER'.toUpperCase(),
              style: TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.w500),
            ),
            background: Image.network(
              'https://picsum.photos/id/1004/600/400',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverSafeArea(
            sliver: SliverPadding(
          padding: EdgeInsets.all(8.0),
          sliver: SliverListdemo(),
        ))
      ],
    ));
  }
}

class SliverGridemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 1.2),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

class SliverListdemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 28.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.75),
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 2, //宽高比为3:1
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white70),
                        borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            posts[index].imageUrl,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(3.0),
                          color: Colors.blueAccent.withOpacity(0.8),
                          child: Text(
                            posts[index].title,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              //backgroundColor: Colors.blueGrey
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(3.0),
                          margin: EdgeInsets.only(top: 8.0),
                          color: Colors.purple[400].withOpacity(0.8),
                          child: Text(
                            posts[index].author,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              //backgroundColor: Colors.blueGrey
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
