import 'package:flutter/material.dart';
import 'package:mentor_flutter/pages/home/desafios/desafios.dart';
import 'package:mentor_flutter/pages/ranking/ranking.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  int indexselected = 1;
  String tittle = "Flutter Mentor";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tittle),),
      drawer: _buildDrawer(context),
      body: Container(
        color: Colors.blueGrey[100],
        child: _buildBody(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          
        },
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
              _buildItem(context,1, "Home",(){

              }),
              _buildItem(context,2, "Ranking",(){
              }),
              _buildItem(context,3, "Sair",(){
              })
            ],
          ),
        ),
      ),
    );
  }

  _buildItem(BuildContext context,int index, String s, Null Function() click) {
    return Container(
      color: index == indexselected ? Colors.grey.withOpacity(0.3) : Colors.transparent,
      margin: EdgeInsets.only(top: 10.0),
      child: InkWell(
        onTap: (){
          setState(() {
            indexselected = index;
            _changeTittle(index);
          });
          click();
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.only(top:8.0,bottom: 8.0, left: 8.0),
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

  _buildBody() {
    switch(indexselected){
      case 1 :return Desafions(); break;
      case 2 :return Ranking(); break;
      case 3 : Navigator.pop(context); break;
      default: return Container();
    }
  }

  void _changeTittle(int i) {
    switch(i){
      case 2: tittle = "Ranking"; break;
      default: tittle = "Flutter Mentor"; break;
    }
  }

}
