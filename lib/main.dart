import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bug_report/issue_pages/issue_81281.dart';
import 'package:flutter_app_bug_report/issue_pages/reverpod_1.0_dev7_override_value_issue.dart';
import 'package:flutter_app_bug_report/issue_pages/vscode_console_error.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'issue_pages/riverpod_1.0_dev11_override_issue.dart';

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

class MyHomePage extends ConsumerStatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
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
                    return VSCodeConsoleError();
                  }));
                },
                child: Text('vscode console error')),
            OpenContainer(closedBuilder: (context, open) {
              return TextButton(
                  onPressed: open, child: Text('Riverpod override issue'));
            }, openBuilder: (context, close) {
              return RiverpodOverrideIssue();
            }),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RiverpodOverrideIssue2();
                  }));
                },
                child: Text('Riverpod 1.0_dev11 override issue')),
          ],
        ),
      ),
    );
  }
}
