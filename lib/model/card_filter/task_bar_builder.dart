import 'package:flutter/material.dart';
import 'package:wiki_animal/configs/constants/constants.dart';

import 'card_filter.dart';
class TaskBarBuilder extends StatelessWidget {
  const TaskBarBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: Constants.contentList.length,
      itemBuilder: (context, index)
      {
        return CardFilter(
          title: Constants.contentList[index].title,
        );
      },
    );
  }
}