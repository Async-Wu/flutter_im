
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterim/common/im_item.dart';
import 'package:flutterim/common/touch_callback.dart';

/**
 * @author wu
 * @description 我的
 */
class Personal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          //头部
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            height: 80.0,
            child: TouchCallBack(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //头像
                  Container(
                    margin: const EdgeInsets.only(left: 12.0,right: 15.0),
                    child: Image.asset('images/head.png',width: 70.0,height: 70.0,),
                  ),
                  //用户名
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '默认',
                            style: TextStyle(fontSize: 18.0,color: Color(0xff353535)),
                          ),
                          Text(
                            '账号 默认',
                            style: TextStyle(fontSize: 14.0,color: Color(0xffa9a9a9)),
                          ),
                        ],
                      ),
                  ),
                  //二维码
                  Container(
                    margin: const EdgeInsets.only(left: 12.0,right: 15.0),
                    child: Image.asset('images/code.png',width: 24.0,height: 24.0,),
                  ),
                ],
              ),
              onPressed: (){},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: ImItem(
              title: '好友动态',
              imagePath: 'images/icon_me_friends.png',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                    title: '消息管理',
                    imagePath: 'images/icom_me_message.png',
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Divider(
                      height: 0.5,
                      color: Color(0xffd9d9d9),
                    ),
                ),
                ImItem(
                    imagePath: 'images/icon_me_photo.png',
                    title: '我的相册',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                    imagePath: 'images/icon_me_file.png',
                    title: '我的文件',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                    imagePath: 'images/icon_me_service.png',
                    title: '联系客服',
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: ImItem(
              title: '清理缓存',
              imagePath: 'images/icon_me_clear.png',
            ),
          )
        ],
      ),
    );
  }
}