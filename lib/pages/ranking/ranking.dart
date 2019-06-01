import 'package:flutter/material.dart';

class Ranking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.person
                )
              ),
              title: Text('1º Rafael Almeida'),
              subtitle: Text('Professor')
            ),

            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.person
                )
              ),
              title: Text('2º Leandro Sena'),
              subtitle: Text('Professor')
            ),

            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.person
                )
              ),
              title: Text('3º Henrique Souza'),
              subtitle: Text('Aluno')
            ),

            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.person
                )
              ),
              title: Text('4º Teo Teles'),
              subtitle: Text('Aluno')
            )

        ],
      ),
    );

  }
}




