import 'package:flutter/material.dart';
import 'package:management/publicPage.dart';
import 'package:flutter/cupertino.dart';

class MissionList extends StatefulWidget {
  @override
  _MissionListState createState() => _MissionListState();
}

class _MissionListState extends State<MissionList> {

  final Map<int, Widget> logoWidgets = const <int, Widget>{
    0: Text('代办'),
    1: Text('待执行'),
    2: Text('待签名'),
    3: Text('已完成'),
  };

  final Map<int, Widget> icons = const <int, Widget>{
    0: Center(
      child: Text(
          '1'
      ),
    ),
    1: Center(
      child: Text(
          '2'
      ),
    ),
    2: Center(
      child: Text(
          '3'
      ),
    ),
    3: Center(
        child: Text('4')
    ),
  };

  int sharedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: PreferredSize(
          child: AppBar(
            leading:  IconButton(
              icon: Icon(
                Icons.keyboard_arrow_left,
              ),
              onPressed: (){},
            ),
            elevation: 0.0,
            centerTitle: true,
            title: Text('任务列表'),
            actions: <Widget>[
             Container(
               child:  FlatButton(
                 padding: EdgeInsets.all(0.0),
                 onPressed: (){},
                 child: Text(
                   '创建',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 15.0,
                     letterSpacing: 0,
                   ),
                 ),

               ),
               width: 30,
               height: 22,
               padding: EdgeInsets.all(0),
               margin: EdgeInsets.fromLTRB(0.0,0.0,13.0,0),
             ),
            ],
            bottom: PreferredSize(
                child: TextFieldWidget(),
            ),
            backgroundColor: Colors.blue,
          ),
          preferredSize: Size.fromHeight(90.0),
      ),
      body:  Column(
        children: <Widget>[

          const Padding(
            padding: EdgeInsets.all(5.0),
          ),

          SizedBox(
            width: 500.0,
            child: CupertinoSegmentedControl<int>(
              children: logoWidgets,
              onValueChanged: (int val) {
                setState(() {
                  sharedValue = val;
                });
              },
              groupValue: sharedValue,
            ),
          ),



          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 32.0,
                horizontal: 16.0,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 64.0,
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(3.0),
                  // boxShadow: const <BoxShadow>[
                  //   BoxShadow(
                  //     offset: Offset(0.0, 3.0),
                  //     blurRadius: 5.0,
                  //     spreadRadius: -1.0,
                  //     color: _colorOne,
                  //   ),
                  //   BoxShadow(
                  //     offset: Offset(0.0, 6.0),
                  //     blurRadius: 10.0,
                  //     spreadRadius: 0.0,
                  //     color: _colorTwo,
                  //   ),
                  //   BoxShadow(
                  //     offset: Offset(0.0, 1.0),
                  //     blurRadius: 18.0,
                  //     spreadRadius: 0.0,
                  //     color: _colorThree,
                  //   ),
                  // ],
                ),
                child: icons[sharedValue],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

