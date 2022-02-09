
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterim/contacts/contact_header.dart';
import 'package:flutterim/contacts/contact_item.dart';
import 'package:flutterim/contacts/contact_vo.dart';
import 'package:flutterim/contacts/contcat_sider_list.dart';

/**
 * @author wu
 * @description 好友列表
 */
class Contacts extends StatefulWidget{
  @override
  ContactState createState()=> new ContactState();
}

class ContactState extends State<Contacts>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactSiderList(
        //好友数据
        items: contactData,
        headerBuilder: (BuildContext context,int index){
          return Container(
            //列表头部
            child: ContactHeader(),
          );
        },
        //好友列表项
        itemBuilder: (BuildContext context,int index){
          return Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: ContactItem(item: contactData[index],),
          );
        },
        //字母行
        sectionBuilder: (BuildContext context,int index){
          return Container(
            height: 32.0,
            padding: const EdgeInsets.only(left: 14.0),
            color: Colors.grey[300],
            alignment: Alignment.centerLeft,
            //显示字母
            child: Text(
              contactData[index].seationKey,
              style: TextStyle(fontSize: 14.0,color: Color(0xff909090)),
            ),
          );
        },
      ),
    );
  }
}