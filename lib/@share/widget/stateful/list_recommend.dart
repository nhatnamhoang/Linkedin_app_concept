import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/widget/stateless/item_recommend.dart';
import 'package:linkedin_app_concept/@share/widget/stateless/item_recommend_profile.dart';

class ListRecommend extends StatefulWidget {
  const ListRecommend({Key? key}) : super(key: key);

  @override
  _ListRecommendState createState() => _ListRecommendState();
}

class _ListRecommendState extends State<ListRecommend> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 13),
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 0),
          itemCount: 4,
          itemBuilder: (context, index) {
            if(index == 1) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemRecommendProfile(),
                  ItemRecommend()
                ],
              );
            } else {
              return ItemRecommend();
            }

          },
        ),
      ),
    );
  }
}
