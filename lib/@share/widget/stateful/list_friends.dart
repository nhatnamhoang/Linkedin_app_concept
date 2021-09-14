import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/@share/widget/stateless/add_new_friend.dart';
import 'package:linkedin_app_concept/@share/widget/stateless/card_friend.dart';

class ListFriends extends StatefulWidget {
  const ListFriends({Key? key}) : super(key: key);

  @override
  _ListFriendsState createState() => _ListFriendsState();
}

class _ListFriendsState extends State<ListFriends> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30),
      width: widthScreen(),
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            if(index == 0) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AddNewFriend(),
                  widthSpace(25),
                  CardFriend()
                ],
              );
            }
            return CardFriend();
          }),
    );
  }
}
