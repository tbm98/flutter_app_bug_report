import 'dart:async';

import 'package:flutter/material.dart';

class VSCodeConsoleError extends StatefulWidget {
  const VSCodeConsoleError({Key? key}) : super(key: key);

  @override
  _VSCodeConsoleErrorState createState() => _VSCodeConsoleErrorState();
}

class _VSCodeConsoleErrorState extends State<VSCodeConsoleError> {
  int count = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 2), (timer) async {
      setState(() {
        count++;
      });

      if (count == 3) {
        print(
            'lajsdflkasjdfkljasdlkfjsakldfjasdkljfklasjdfklasdjflkasjdflkjasdlkfjasdlkfjasdlkfjasdlfjasdlkfjasdlfjlsdkfjlasdjflasdkjflsdajflsdjflksdjf lksdjflsdjfklsadjflk asdjflksad jflksad jflksjdflkasdjfkl');
      }

      if (count == 5) {
        timer.cancel();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    String? s;
    return Container(
      child: Text(s!),
    );
  }
}
