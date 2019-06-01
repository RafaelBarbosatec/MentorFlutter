
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mentor_flutter/pages/primeiro_acesso/primeiro_acesso.dart';
import 'package:mentor_flutter/support/Auth.dart';
import 'package:mentor_flutter/support/util.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              Text("Flutter Mentor",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 180.0,
                  child: RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                    ),
                    child: _buildInnerButtonGoogle(),
                    onPressed: (){
                      Navigator
                          .of(context)
                          .push( MaterialPageRoute(builder: (BuildContext context)
                      {
                        return PrimeiroAcesso();
                      }));

                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildInnerButtonGoogle() {
    return Row(
      children: <Widget>[
        Image.asset(
            'assets/logo_google.png',
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
              "Login com Google",
            style: TextStyle(
              color: Colors.grey[600]
            ),
          ),
        )
      ],
    );
  }

}
