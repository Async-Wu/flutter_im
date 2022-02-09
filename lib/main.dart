import 'package:flutter/material.dart';
import './app.dart';
import './loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import './search.dart';

/**
 * @author wu
 * @description 程序入口
 */
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: '聊天室',
    theme: _themeData,
    routes: <String,WidgetBuilder>{
      "app":(BuildContext context) => new App(),
      "/friends":(_) =>new WebviewScaffold(
        //Webview
        url:"https://flutter.io",
        appBar: new AppBar(
          title: new Text("Flutter 官网"),
        ),
        withZoom: true,
        withLocalStorage: true,
      ),
      'search':(BuildContext context) => new Search(),//搜索页面路由
    },
    //指定加载页为首页
    home: new LoadingPage(),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '聊天室',
      theme: _themeData,
      //添加路由表
      routes: <String,WidgetBuilder>{
        "app":(BuildContext context) => new MyApp(),

      },

    );
  }
}

//自定义主题
final ThemeData _themeData = new ThemeData(
  primaryColor: Colors.lightGreen,
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Colors.lightGreen,
);
