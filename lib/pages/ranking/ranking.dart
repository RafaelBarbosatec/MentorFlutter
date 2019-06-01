import 'package:flutter/material.dart';

class Ranking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
        children: <Widget>[
          _buildCard('1º Rafael Almeida','Professor'),
          _buildCard('2º Leandro Sena','Professor'),
          _buildCard('3º Henrique Souza','Professor'),
          _buildCard('4º Teo Teles','Aluno'),
        ],
      ),
    );
  }

  _buildCard(String name, String cat) {
    return Padding(
      padding: const EdgeInsets.only(left:5.0,right: 5.0, top: 4.0),
      child: Card(
        child: ListTile(
            leading: CircleAvatar(
                child: Icon(
                    Icons.person
                )
            ),
            title: Text(name),
            subtitle: Text(cat)
        ),
      ),
    );
  }
}




