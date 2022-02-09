/**
 * @author wu
 * @description 聊天数据
 */
class MessageData{
  //头像
  String avatar;
  //主标题
  String title;
  //子标题
  String subTitle;
  //时间
  DateTime time;
  //类型
  MessageType type;

  MessageData(this.avatar,this.title,this.subTitle,this.time,this.type);
}

//消息类型
enum MessageType{
  SYSTEM,
  PUBLIC,
  CHAT,
  GROUP,
}

//模拟数据
List<MessageData> messageData = [
  new MessageData('', '小雅', '一条新的信息', new DateTime.now(), MessageType.CHAT),
  new MessageData('', '小赵', '两条新的信息', new DateTime.now(), MessageType.CHAT),
  new MessageData('', '小唐', '三条新的信息', new DateTime.now(), MessageType.CHAT),
  new MessageData('', '小李', '这条信息挺长的，你不一定能够全部看到，想要看到全部请点击，进入详情查看相关的信息，多谢你的配合。', new DateTime.now(), MessageType.CHAT),
  new MessageData('', '小张', '新的信息', new DateTime.now(), MessageType.CHAT),
  new MessageData('', '小刘', '新的信息', new DateTime.now(), MessageType.CHAT),
];