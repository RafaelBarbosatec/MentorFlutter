import 'package:flutter/material.dart';

class DetalheDesafio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(("Desafio de Layouts")),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              _buildQuestion(),
              Container(
                margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
                height: 1,
                color: Colors.grey,
              ),
              _buildQuestion(),
              Container(
                margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
                height: 1,
                color: Colors.grey,
              ),
              _buildQuestion(),
              Container(
                margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
                height: 1,
                color: Colors.grey,
              ),
              _buildQuestion(),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuestion() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent aliquet, enim et suscipit hendrerit, mauris dui efficitur nunc, dapibus vulputate tellus nibh vel nunc. Aenean sodales volutpat dolor quis venenatis. Sed at tristique magna. Nullam eget turpis id velit volutpat auctor. Phasellus nec risus ac sapien porttitor molestie. Sed faucibus magna vel urna aliquam semper. Nullam massa mi, semper vitae mi sed, rhoncus lobortis elit?"),
        Container(height: 10.0,),
        _builDRadio("Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
        _builDRadio("Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
        _builDRadio("Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
      ],
    );
  }

  _builDRadio(String s) {
    return Row(
      children: <Widget>[
        Radio(
            groupValue: 0,
            onChanged: (v){

            }
        ),
        Expanded(child: Text(s))
      ],
    );
  }
}
