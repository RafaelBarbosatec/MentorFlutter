import 'package:flutter/material.dart';

class Ranking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
              leading: CircleAvatar(
                child: Text('Teógenes')
              ),
              title: Text('Teles'),
              subtitle: Text('bla bla bla ')
            )

        ],
      ),
    );

  }
}




