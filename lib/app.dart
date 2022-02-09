
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat/message_page.dart';
import 'contacts/contacts.dart';
import 'personal/personal.dart';

/**
 * @author: wu
 * @description: 应用页面
 */
class App extends StatefulWidget{
  @override
  AppState createState()  => AppState();
}

class AppState extends State<App>{
  //当前选中内容索引
  var _currentIndex = 0;
  //聊天页面
  MessagePage message;
  //好友页面
  Contacts contacts;
  //我的
  Personal personal;

  //根据索引 返回页面
  currentPage(){
    switch(_currentIndex){
      case 0:
        if(message==null){
          message = new MessagePage();
        }
        return message;
      case 1:
        if(contacts==null){
          contacts = new Contacts();
        }
        return contacts;
      case 2:
        if(personal==null){
          personal= new Personal();
        }
        return personal;
      default:
    }
  }

  //渲染菜单项
  _popMenuItem(String title,{String imagePath,IconData iconData}){
    return PopupMenuItem(
        child: Row(
          children: <Widget>[
            //判断使用图片路径还是图标
            imagePath != null
            ? Image.asset(
              imagePath,
              width: 32.0,
              height: 32.0,
            )
                :SizedBox(
              width: 32.0,
              height: 32.0,
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IM'),
        actions: <Widget>[
          GestureDetector(
            onTap:(){
              //跳转搜索页面
              Navigator.pushNamed(context, 'search');
            },
            child: Icon(
              Icons.search,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: GestureDetector(
              //弹出
              onTap: (){
                showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                    items: <PopupMenuEntry>[
                      _popMenuItem('发起会话',imagePath: 'images/icon_menu_group.png'),
                      _popMenuItem('添加好友',imagePath: 'images/icon_menu_addfriend.png'),
                      _popMenuItem('联系客服',iconData: Icons.person),
                    ],
                );
              },
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
      //底部导航
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          //当前选中的索引
          currentIndex: _currentIndex,
          //点击后修改索引
          onTap: ((index){
            setState(() {
              _currentIndex = index;
            });
          }),
          items: [
            new BottomNavigationBarItem(
              title:new Text(
                '聊天',
                style: TextStyle(
                  color: _currentIndex == 0 ? Color(0xFF1296db) : Color(0xff999999)
                ),
              ),
                icon: _currentIndex == 0 ? Image.asset('images/message_pressed.png',width: 32.0,height: 28.0,):Image.asset('images/message_normal.png',width: 32.0,height: 28.0,)
            ),
            new BottomNavigationBarItem(
                title:new Text(
                  '好友',
                  style: TextStyle(
                      color: _currentIndex == 0 ? Color(0xFF1296db) : Color(0xff999999)
                  ),
                ),
                icon: _currentIndex == 0 ? Image.asset('images/contact_list_pressed.png',width: 32.0,height: 28.0,):Image.asset('images/contact_list_normal.png',width: 32.0,height: 28.0,)
            ),
            new BottomNavigationBarItem(
                title:new Text(
                  '我的',
                  style: TextStyle(
                      color: _currentIndex == 0 ? Color(0xFF1296db) : Color(0xff999999)
                  ),
                ),
                icon: _currentIndex == 0 ? Image.asset('images/profile_pressed.png',width: 32.0,height: 28.0,):Image.asset('images/profile_normal.png',width: 32.0,height: 28.0,)
            ),
          ]),
      //中间显示当前页面
      body: currentPage(),
    );
  }

}