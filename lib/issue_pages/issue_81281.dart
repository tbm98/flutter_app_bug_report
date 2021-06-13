import 'package:flutter/material.dart';

class Issue81281 extends StatefulWidget {
  @override
  _Issue81281State createState() => _Issue81281State();
}

class _Issue81281State extends State<Issue81281> {
  bool enableBottomStackView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            enableBottomStackView = !enableBottomStackView;
          });
        },
        child: Text(enableBottomStackView ? 'off' : 'on'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                TextField(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                ),
                TextField(),
                Container(
                  height: 100,
                  color: Colors.blue.shade50,
                ),
              ],
            ),
          ),
          if (enableBottomStackView)
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 50,
                  child: Text('hihi'),
                  alignment: Alignment.topCenter,
                ))
        ],
      ),
    );
  }
}
