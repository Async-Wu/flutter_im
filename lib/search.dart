
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterim/common/touch_callback.dart';

/**
 * @author wu
 * @description 搜索
 */
class Search extends StatefulWidget{

  @override
  SearchState createState() => SearchState();

}
class SearchState extends State<Search>{
  //焦点
  FocusNode focusNode = new FocusNode();

  //获取焦点
  _requestFoucs(){
    FocusScope.of(context).requestFocus(focusNode);
    return focusNode;
  }
  //返回文本组件
  _getText(String text){
    return TouchCallBack(
        isfeed: false,
        onPressed:(){},
        child: Text(
          text,
          style: TextStyle(fontSize: 14.0,color: Color(0xff1296db)),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 25.0),
        child: Column(
          //水平方向
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                TouchCallBack(
                    isfeed: false,
                    child: Container(
                      height: 45.0,
                      margin: const EdgeInsets.only(left: 12.0,right: 10.0),
                      child: Icon(
                        Icons.chevron_left,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: (){
                      //返回上一个页面
                      Navigator.pop(context);
                }),
                //搜索框
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45.0,
                  margin: const EdgeInsets.only(left: 50.0,right: 10.0),
                  //搜索框底部边框
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0,color: Colors.green),
                    )
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        //输入框
                          child: TextField(
                            focusNode: _requestFoucs(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                            onChanged: (String text){},
                            decoration: InputDecoration(
                              hintText: '搜索',border: InputBorder.none),
                          ),
                      ),
                      //麦克风
                      Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.mic,
                          color: Color(0xffaaaaaa),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Text(
                '常用搜索',
                style: TextStyle(fontSize: 16.0,color: Color(0xffb5b5b5)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _getText('朋友'),
                  _getText('聊天'),
                  _getText('群组'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 30.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _getText("flutter"),
                  _getText("Dart"),
                  _getText("Android"),
                ],
              ) ,
            )
          ],
        ),
      ),
    );
  }
}