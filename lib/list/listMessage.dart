import 'package:flutter/material.dart';
import 'package:management/model/postTow.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  @override
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {

  List<int> mList;

  List<PostTow> _listText = postsTow;

  List<ExpandStateBean> expandStateList;
  _ExpansionPanelListDemoState(){
    mList = new List();
    expandStateList = new List();
    for(int i=0;i < _listText.length;i++){
      mList.add(i);
      expandStateList.add(ExpandStateBean(i, false));
    }
  }

  //声明一个内部的方法
  //设置现在打开的
  _setCurrentIndex(int index,isExpand){
    setState(() {
      expandStateList.forEach((item){
        if(item.index == index){
          item.isOPen = !isExpand;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (index,bol){
          _setCurrentIndex(index, bol);
        },
        children: mList.map((index){
          return ExpansionPanel(
              headerBuilder: (context,isExpanded){
                return ListTile(
                  title:Text(_listText[index].title),
                );
              },
              body: _listBuild(postsTow[index].author),
              isExpanded: expandStateList[index].isOPen
          );
        }).toList(),
      ),
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
    return Column(
      children: <Widget>[
        new Divider(color: Colors.grey,),
        ListTile(
          title: Text(s),
        ),
      ],
    );

  }

}

class ExpandStateBean{
  //是否打开
  var isOPen;
  var index;
  ExpandStateBean(this.index,this.isOPen);
}



