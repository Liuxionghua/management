import 'package:flutter/material.dart';
import 'package:management/model/postTow.dart';

class ExpansionTileDemo extends StatelessWidget {


  Widget _showList (BuildContext context,int index) {
      return Column(
        children: <Widget>[
          ExpansionTile(
            title:Text(postsTow[index].title),
            //backgroundColor: Colors.white12,
            children: <Widget>[
              _listBuild(postsTow[index].author),
            ],
            initiallyExpanded: true,
          )
        ],
      );
  }

  //该方法返回一个列表
  Widget _listBuild(List listData) {
    List<Widget> _list = new List();
    for(var i = 0; i < listData.length; i++){
      _list.add(_layout(listData[i]));
    }
    return Column(children: _list);
  }

  //根据传过来的字符串，生成一个Text布局
  Widget _layout(String s) {
    return ListTile(
      title: Text(s),
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView.builder(
        itemCount: postsTow.length,
        itemBuilder: _showList,
      ),
    );

  }
}