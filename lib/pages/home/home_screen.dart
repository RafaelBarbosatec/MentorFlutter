import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Mentor"),),
      drawer: _buildDrawer(context),
      body: Container(

      ),
    );
  }

  _buildDrawer(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: <Widget>[
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(40.0))
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  child: Image.network(
                      'https://ominutodosaber.files.wordpress.com/2011/01/mr-bean.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    "Mr. Bean",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0
                  ),
                ),
              ),
              Container(
                height: 1.0,
                color: Colors.grey,
              ),
              _buildItem(context, "Home",(){

              }),
              _buildItem(context, "Desafions",(){

              }),
              _buildItem(context, "Ranking",(){

              }),
              _buildItem(context, "Sair",(){

              })
            ],
          ),
        ),
      ),
    );
  }

  _buildItem(BuildContext context,String s, Null Function() click) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: InkWell(
        onTap: (){
          click();
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
          child: Align(
            alignment: Alignment.centerLeft,
              child: Text(
                  s,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.grey[700]
                ),
              )
          ),
        ),
      ),
    );
  }
}