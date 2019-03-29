import 'package:flutter/material.dart';
import 'package:management/list/listMessage.dart';

class SiteMessage extends StatefulWidget {
  @override
  _SiteMessageState createState() => _SiteMessageState();
}
class _SiteMessageState extends State<SiteMessage> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          leading: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Icon(Icons.keyboard_arrow_left),
                ),
                Text(
                  '返回',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            width: 69,
          ),

          title: Text(
            '更多站点信息',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
        body: ListView(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    _getContainer('编号：1.1'),
                    new Divider(color: Colors.grey,),
                    _getContainer('投产日期：2005'),
                    new Divider(color: Colors.grey,),
                    _getContainer('五防系统厂家：珠海共创'),
                    new Divider(color: Colors.grey,),
                    _getContainer('五防系统模式：独立五防'),
                    new Divider(color: Colors.grey,),
                    _getContainer('监控系统：PRS7000'),
                    new Divider(color: Colors.grey,),
                    _getContainer('杀毒软件：'),
                    new Divider(color: Colors.grey,),
                    _getContainer('有无加密：无'),
                    new Divider(color: Colors.grey,),
                  ],
                ),
              ),
              ExpansionPanelListDemo(),

            ]
        )
    );
  }

  /**
   * 抽取item项
   */
  Widget _getContainer(String test) {
    return new Container(
      height: 48,
//      ListTile
      child: new ListTile(
        title: new Text(
          test,
          style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontStyle: FontStyle.normal
          ),
        ),
      ),
    );
  }
}

class ExpandStateBean{
  //是否打开
  var isOPen;
  var index;
  ExpandStateBean(this.index,this.isOPen);
}

