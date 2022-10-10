import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

class CourseTileWidget extends StatelessWidget {
  const CourseTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listCourse = [
      'flutter',
      'Dart',
      'C programming',
      'Java programming',
      'HTML'
    ];
    return Container(
      height: 60,
      width: 250,
      child: Card(
        borderOnForeground: true,
        elevation: 3,
        child: ListTile(
          leading: const CircleAvatar(
            child: Icon(Icons.square_outlined),
          ),
          title:
              Text(listCourse[Random().nextInt(listCourse.length)].toString()),
        ),
      ),
    );
  }
}
