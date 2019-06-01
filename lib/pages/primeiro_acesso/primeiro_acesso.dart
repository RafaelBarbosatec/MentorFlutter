
import 'package:flutter/material.dart';
import 'package:mentor_flutter/pages/bem_vindo/bem_vindo.dart';
import 'package:mentor_flutter/support/util.dart';

class PrimeiroAcesso extends StatelessWidget {

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
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                    "Qual seu nível de conhecimento com Flutter?",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0
                  ),
                ),
              ),
              _buildButton(context,"Expert",(){
                _goBemVindo(context);
              }),
              _buildButton(context,"Manjo",(){
                _goBemVindo(context);
              }),
              _buildButton(context,"Já brinquei",(){
                _goBemVindo(context);
              }),
              _buildButton(context,"Quero conhecer",(){
                _goBemVindo(context);
              })
            ],
          ),
        ),
      ),
    );
  }

  _buildButton(BuildContext context, String s, Function() click) {
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
          child: Text(s),
          onPressed: (){
            click();
          },
        ),
      ),
    );
  }

  void _goBemVindo(BuildContext context) {
    Navigator
        .of(context)
        .push( MaterialPageRoute(builder: (BuildContext context)
    {
      return BemVindoView();
    }));
  }
}
