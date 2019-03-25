import 'dart:async';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../models/member.dart';

Future<String> _loadMemberJson() async {
  return await rootBundle.loadString('assets/member.json');
}

Future<MemberList> decodeMemberList() async {
  String memberListJson = await _loadMemberJson();

  List<dynamic> list = json.decode(memberListJson);

  MemberList memberList = MemberList.fromJson(list);

  memberList.memberList
      .forEach((member) => print('member name is ${member.name}'));

  return memberList;
}
