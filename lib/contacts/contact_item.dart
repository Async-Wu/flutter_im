import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterim/contacts/contact_vo.dart';

/**
 * @author wu
 * @description 好友列表项
 */
class ContactItem extends StatelessWidget{
   //好友
   final ContactVO item;
   //标题
   final String titleName;
   //图片路径
   final String imageName;

   ContactItem({this.item,this.titleName,this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        //底部添加一条边
        border: Border(bottom: BorderSide(width: 0.5,color: Color(0xFFd9d9d9))),
      ),
      height: 52.0,
      child: FlatButton(
        onPressed: (){},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //设置头像 没有加载默认
            imageName == null ? Image.network(item.avatarUrl!=''?item.avatarUrl:''):Image.asset(imageName,width: 36.0,height: 36.0,),
            //标题
            Container(
              margin: const EdgeInsets.only(left: 12.0),
              child: Text(
                titleName == null? item.name??'暂时':titleName,
                style: TextStyle(fontSize: 18.0,color: Color(0xff353535)),
                maxLines: 1,
              ),
            )
          ],
        ),
      ),
    );
  }

}

