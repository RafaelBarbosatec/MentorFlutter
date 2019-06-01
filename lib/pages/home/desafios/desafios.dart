import 'package:flutter/material.dart';

class Desafions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: ListView(
        children: <Widget>[
          _buildItem()
        ],
      ),
    );
  }

  _buildItem() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        child: Row(
          children: <Widget>[
            _buildImg()
          ],
        ),
      ),
    );
  }

  _buildImg() {
    return Container(
      width: 80.0,
      height: 80.0,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
        child: Image.network(
          'https://ominutodosaber.files.wordpress.com/2011/01/mr-bean.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
