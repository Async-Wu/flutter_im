
import 'package:flutter/cupertino.dart';

/**
 * @author wu
 * @description 好友
 */
class ContactVO {
  String seationKey;
  String name;
  String avatarUrl;
  ContactVO({@required this.seationKey,this.name,this.avatarUrl});
}

List<ContactVO> contactData = [
  new ContactVO(seationKey: 'A',name: "阿三",avatarUrl: ''),
  new ContactVO(seationKey: 'A',name: "阿雅",avatarUrl: ''),
  new ContactVO(seationKey: 'B',name: "波仔",avatarUrl: ''),
  new ContactVO(seationKey: 'D',name: "登登",avatarUrl: ''),
  new ContactVO(seationKey: 'F',name: "福福",avatarUrl: ''),
  new ContactVO(seationKey: 'G',name: "锅仔",avatarUrl: ''),
  new ContactVO(seationKey: 'H',name: "海海",avatarUrl: ''),
];