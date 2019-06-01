
import 'package:flutter/material.dart';
import 'package:mentor_flutter/support/util.dart';

class BemVindoView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: new LinearGradient(
              colors: [ColorFromHex(code: "#54c5f8"), ColorFromHex(code: "#01579b")],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Bem vindo\nao\nFlutter mentor!",
                textAlign: TextAlign.center,

              )
            ],
          ),
        ),
      ),
    );
  }
}
