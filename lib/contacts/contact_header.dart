import 'package:flutter/cupertino.dart';
import 'package:flutterim/contacts/contact_item.dart';

/**
 * @author wu
 * @description 好友列表头部
 */
class ContactHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Column(children: <Widget>[
       ContactItem(titleName: '添加好友',imageName: 'images/icon_addfriend.png:',),
       ContactItem(titleName: '公共聊天室',imageName: 'images/icon_groupchat.png',),
     ],);
  }
}