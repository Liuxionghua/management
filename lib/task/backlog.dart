import 'package:flutter/material.dart';
import 'package:management/model/taskList.dart';


class backlogList extends StatefulWidget {
  @override
  _backlogListState createState() => _backlogListState();
}

class _backlogListState extends State<backlogList> {
  Widget _taskItemBuilder(BuildContext context,int index) {
    return Container(
      height: 176.0,
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(0,8,0,8),   //设置容器边距
      padding: EdgeInsets.all(0),
      child: Column(
        children: <Widget>[
          //第一行
          Container(
           child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      '${index+1}  ',
                      style: TextStyle(
                        fontSize: 15,
                          color: Colors.blueAccent
                      ),
                    ),
                    Text(tasks[index].taskTitle),
                  ],
                ),
                Container(
                  child: Text(
                    tasks[index].taskTime,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  margin: EdgeInsets.only(
                    right: 10
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(
              top: 7,
              left: 10
            ),
            height: 45,
          ),
          new Divider(color: Colors.black,height: 11,),
          //第二行
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        '任务详情 | ',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                        ),
                      ),
                      Text(tasks[index].taskDetails),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '详情',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.orange
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Image(
                          image: AssetImage('image/向右双箭头.png',),
                          width: 15,
                          height: 15,
                        ),
                        onPressed: (){},
                      ),
                      width: 30,
                      height: 30,
                    ),
                  ],
                )
              ],
            ),
            padding: EdgeInsets.only(
                left: 10
            ),
          ),
          //第三行
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        '计划开始时间 | ',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                        ),
                      ),
                      Text(tasks[index].startDate),
                    ],
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(
                left: 10
            ),
          ),
          //第四行
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        '计划结束时间 | ',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                        ),
                      ),
                      Text(tasks[index].endDate),
                    ],
                  ),
                ),
              ],
            ),
            margin: EdgeInsets.only(
              top: 5,
              bottom: 5,
            ),
            padding: EdgeInsets.only(
                left: 10
            ),
          ),
          //第五行按钮
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: FlatButton(
                  onPressed: (){},
                  child: Text(
                    '待创建',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius:new BorderRadius.all(new Radius.circular(5.0)),
                  ),
                  color: Colors.lightGreenAccent[700],
                  padding: EdgeInsets.all(0),
                ),
                width: 65,
                height: 30,
                margin: EdgeInsets.only(
                  right: 10
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: _taskItemBuilder,
      ),
    );
  }
}
