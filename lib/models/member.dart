class MemberList {
  List<Member> memberList;

  MemberList({this.memberList});

  factory MemberList.fromJson(List<dynamic> listJson) {

    List<Member> memberList =
        listJson.map((value) => Member.fromJson(value)).toList();

    return MemberList(memberList: memberList);
  }
}

class Member {
  int id;
  String name;

  Member({this.id, this.name});

  factory Member.fromJson(Map<String, dynamic> json) {
    return Member(id: json['id'], name: json['name']);
  }
}
