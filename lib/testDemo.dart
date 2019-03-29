import 'package:flutter/material.dart';
import 'package:management/model/post.dart';

class HomeList extends StatelessWidget{

  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),   //设置容器边距
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}