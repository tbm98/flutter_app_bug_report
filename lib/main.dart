import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_bug_report/issue_pages/issue_81281.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'issue_pages/provider_listener_issue.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter app bug report'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Issue81281();
                  }));
                },
                child: Text('issue 81281')),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProviderListenerIssue();
                  }));
                },
                child: Text('ProviderListener issue')),
            Text(
              'issue',
            ),
            Container(
                color: Colors.red.shade100,
                child: Text(
                  'Hello world 0 ',
                  style: TextStyle(
                    height: 3,
                    fontSize: 30,
                  ),
                )),
            SizedBox(
              height: 16,
            ),
            Text('expected'),
            Container(
                color: Colors.red.shade100,
                height: 90,
                child: Center(
                  child: Text(
                    'Hello world 0 ',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
