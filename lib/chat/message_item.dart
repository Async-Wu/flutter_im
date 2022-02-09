
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterim/chat/message_data.dart';
import 'package:flutterim/common/touch_callback.dart';

class MessageItem extends StatelessWidget{
  final MessageData message;
  MessageItem(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        //为信息底部加条边
        border: Border(bottom: BorderSide(width: 0.5,color: Color(0xFFd9d9d9)))
      ),
      height: 64.0,
      child: TouchCallBack(
        onPressed: (){

        },
        //水平布局
        child: Row(
          //垂直居中
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //头像
            Container(
              margin: const EdgeInsets.only(left: 14.0,right: 14.0),
              child: Image.network(message.avatar,width: 48.0,height: 48.0,),
            ),
            Expanded(
                child: Column(
                  //垂直居中
                  mainAxisAlignment: MainAxisAlignment.center,
                  //水平靠左
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      message.title,
                      style: TextStyle(fontSize: 16.0,color: Color(0xff353535)),
                      maxLines: 1,
                    ),
                    Padding(padding: const EdgeInsets.only(top: 8.0)),
                    Text(
                      message.subTitle,
                      style: TextStyle(fontSize: 14.0,color: Color(0xffa9a9a9)),
                      maxLines: 1,
                      //显示不完全用省略号
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
            ),
            Container(
              //顶部对其
              alignment: AlignmentDirectional.topStart,
              margin: const EdgeInsets.only(right: 12.0,top: 12.0),
              child: Text(
                formatDate(message.time).toString(),
                style: TextStyle(fontSize: 14.0,color: Color(0xFFa9a9a9)),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  //显示时间
  formatDate(DateTime time) {
    String dateSlug ="${time.year.toString()}-${time.month.toString().padLeft(2,'0')}-${time.day.toString().padLeft(2,'0')}-${time.hour.toString().padLeft(2,'0')}-${time.second.toString().padLeft(2,'0')}-${time.microsecond.toString().padLeft(2,'0')}";
    return dateSlug;
  }

}