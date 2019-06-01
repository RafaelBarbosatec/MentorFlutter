import 'package:flutter/material.dart';
import 'package:mentor_flutter/pages/detail_desafio/DetalheDesafio.dart';

class Desafions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          _buildItem(context),
          _buildItem(context),
          _buildItem(context),
          _buildItem(context),
          _buildItem(context),
          _buildItem(context),
          _buildItem(context),
        ],
      ),
    );
  }

  _buildItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 4.0,
        child: InkWell(
          onTap: (){

            Navigator
                .of(context)
                .push( MaterialPageRoute(builder: (BuildContext context)
            {
              return DetalheDesafio();
            }));

          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                _buildImg(),
                _buildContect()
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildImg() {
    return Container(
      width: 70.0,
      height: 70.0,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(35.0)),
        child: Image.network(
          'https://ominutodosaber.files.wordpress.com/2011/01/mr-bean.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  _buildContect() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
                "Desafio de Layouts",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.grey[800]
              ),
            ),
            Text(
              "01 de Junho de 2019",
              style: TextStyle(
                  color: Colors.grey[500],
                fontSize: 12.0
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                "Neste desafio testaremos seus conhecimentos de forma avançada em construção de layouts",
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 14.0
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
