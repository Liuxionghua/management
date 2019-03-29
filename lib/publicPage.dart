import 'package:flutter/material.dart';


class TextFieldWidget extends StatelessWidget {
  //搜索框
  Widget buildTextField(){
    // theme设置局部主题
    return Theme(
      data: new ThemeData(primaryColor: Colors.black),
        child:new TextField(
          cursorColor: Colors.black, // 光标颜色
          // 默认设置
          decoration: InputDecoration(
//            contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
          contentPadding: EdgeInsets.fromLTRB(0,5,0,3),
            border: InputBorder.none,
            prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
                size: 16,
            ),
            hintText: "输入站点，时间",
            hintStyle: new TextStyle(
                fontSize: 12,
                color: Colors.white,
            ),

          ),
          style: new TextStyle(fontSize:15, color: Colors.white),
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //搜索框
        new Expanded(
            child: Container(
              // 修饰搜索框, 白色背景与圆角
              decoration: new BoxDecoration(
                color: Colors.blue[700],
                borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
              ),
              alignment: Alignment.center,
              width: 243.0,
              height: 26.0,
              child: buildTextField(),
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
              margin: EdgeInsets.fromLTRB(15.0, 0.0, 10.0, 7.0),
            ),
        ),
        //筛选按钮
        Container(
          child:OutlineButton(
            onPressed: (){},
            child: Text(
              '更多筛选',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.0,
              ),
            ),
            shape: RoundedRectangleBorder(
              side: BorderSide(
              ),
              borderRadius:new BorderRadius.all(new Radius.circular(20.0)),
            ),
            borderSide:new BorderSide(color:Colors.white),
          ),
          margin: EdgeInsets.fromLTRB(5.0, 0.0, 13.0, 7.0),
          height: 24.0,
        ),
      ],
    );
  }
}
