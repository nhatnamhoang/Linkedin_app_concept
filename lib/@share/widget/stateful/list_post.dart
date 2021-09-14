import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/widget/stateful/post_widget.dart';

class ListPost extends StatefulWidget {
  const ListPost({Key? key}) : super(key: key);

  @override
  _ListPostState createState() => _ListPostState();
}

class _ListPostState extends State<ListPost> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        padding: const EdgeInsets.all(0),
        itemBuilder: (context, index) => PostWidget(),
      ),
    );
  }
}
