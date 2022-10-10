import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_elearning/widgets/cours_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Programming',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Programming Course'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(children: [
        Container(
          height: double.infinity,
          width: 250,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Learn Code for free',
                    style: TextStyle(fontSize: 38),
                  ),
                ),
                Container(
                  height: 600,
                  width: 600,
                  color: Colors.blueAccent,
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/images/study.svg'),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 300,
              width: 1400,
              color: Colors.yellowAccent,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    'Choose one course',
                    style: TextStyle(fontSize: 24),
                  ),
                  Container(
                    height: 400,
                    width: 1000,
                    //color: Colors.red,
                    child: Row(
                        children: List.generate(
                            4, (index) => const CourseTileWidget())),
                    //   child: GridView.count(
                    //       mainAxisSpacing: 2,
                    //       crossAxisSpacing: 2,
                    //       crossAxisCount: 3,
                    //       children: List.generate(
                    //           3,
                    //           (index) => Container(
                    //               height: 60, child: const CourseTileWidget()))),
                  )
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}
