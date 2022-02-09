import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterim/contacts/contact_vo.dart';

/**
 * @author wu
 * @description 渲染
 */
class ContactSiderList extends StatefulWidget{
  //好友列表数据
  final List<ContactVO> items;
  //好友表头
  final IndexedWidgetBuilder headerBuilder;
  //好友列表项
  final IndexedWidgetBuilder itemBuilder;
  //字母构造
  final IndexedWidgetBuilder sectionBuilder;

  ContactSiderList({Key key,@required this.items,this.headerBuilder,@required this.itemBuilder,@required this.sectionBuilder}):super(key: key);

  @override
  ContactState createState() => new ContactState();
}

class ContactState extends State<ContactSiderList>{
  //列表滚动控制
  final ScrollController _scrollController = new ScrollController();
  bool _onNotification(ScrollNotification notification){
    return true;
  }
  //判断显示头部视图
  _isShowHeaderView(index){
    if(index == 0 && widget.headerBuilder!=null){
      return Offstage(
        offstage: false,
        child: widget.headerBuilder(context,index),
      );
    }
    return Container();
  }
  //是否显示好友列表头部
  bool _shouldShowHeader(int position){
    if(position<=0){
      return false;
    }
    if(position!=0&&widget.items[position].seationKey!=widget.items[position-1].seationKey){
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //加载更多
          NotificationListener(
              onNotification: _onNotification,
              child: ListView.builder(
                  //滚动控制
                  controller: _scrollController,
                  //内容不足时 也允许滑动
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: widget.items.length,
                  itemBuilder: (BuildContext context,int index){
                    return Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: <Widget>[
                          //显示列表头
                          _isShowHeaderView(index),
                          //是否显示英文字母
                          Offstage(
                            offstage: _shouldShowHeader(index),
                            child: widget.sectionBuilder(context,index),
                          ),
                          //列表项
                          Column(
                            children: <Widget>[
                              widget.itemBuilder(context,index),
                            ],
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}