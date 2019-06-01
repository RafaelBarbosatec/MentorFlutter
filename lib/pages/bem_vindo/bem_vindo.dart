
import 'package:flutter/material.dart';
import 'package:mentor_flutter/pages/home/home_screen.dart';
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
              Container(
                margin: EdgeInsets.only(bottom: 50.0),
                child: Text("Bem vindo\nAo\nFlutter mentor!",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 50.0),
                child: Text("Seu conhecimento vale mais do que você!",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
              _buildButton(context)
            ],
          ),
        ),
      ),
    );
  }

  _buildButton(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0,left: 30.0, right: 30.0),
      child: SizedBox(
        width: double.maxFinite,
        height: 40.0,
        child: RaisedButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
          ),
          child: Text("GO"),
          onPressed: (){
            Navigator
                .of(context)
                .pushReplacement( MaterialPageRoute(builder: (BuildContext context)
            {
              return HomeView();
            }));
          },
        ),
      ),
    );

  }
}