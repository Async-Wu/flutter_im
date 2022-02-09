import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/**
 * @author:wu
 * @description: 加载页面
 */
class LoadingPage extends StatefulWidget{
  @override
  _LoadingStatae createState() => new _LoadingStatae();

}
class _LoadingStatae extends State<LoadingPage>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //加载页面停顿一下，模拟开场动画
    new Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacementNamed("app");
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Stack(
        children: <Widget>[
          Image.asset("images/loading.png",fit: BoxFit.cover,),
        ],
      ),
    );
  }

}