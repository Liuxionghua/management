import 'package:flutter/material.dart';
import 'package:management/list/SiteMessage.dart';
import 'package:management/missionList.dart';
import 'package:management/task/backlog.dart';
import 'package:management/testDemo.dart';
import 'package:management/list/listMessage.dart';
import 'package:management/ExpansionTile.dart';

class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      //home: NavigatorDemo(),
//      initialRoute: '/Mission',
//      routes: {
//        '/Mission':(context) => MissionList(),

//      },
   );
  }
}
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: '维护管理系统',
    home: backlogList(),
  ),
  );
}

