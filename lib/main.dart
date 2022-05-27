
import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(
    title: 'Interest Calcy',
    home: ICForm(),
  ));
}

class ICForm extends StatefulWidget{
  @override
State<StatefulWidget> createState(){
    return ICFormState();
  }
}

class ICFormState extends State<ICForm>{
  var _currencies= ['INR','Dollar','Pounds'];
  var currencyselected ='INR';
  final _minpadding= 5.0;
@override
  Widget build(BuildContext context){


  return Scaffold(

    appBar: AppBar(
      title: Text('Interest Calculator')),
      body: Container(
        margin: EdgeInsets.all(_minpadding * 2),
        child: ListView(
          children: <Widget>[
            getImageAsset(),
            Padding(
              padding: EdgeInsets.only(top: _minpadding ,bottom:_minpadding ),
              child: TextField( keyboardType: TextInputType.number,
                decoration: InputDecoration(
                labelText: 'Principal',
                hintText: 'Enter Principal eg. 12000',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
              ),),
            ),

        Padding(
          padding: EdgeInsets.only(top: _minpadding ,bottom:_minpadding ),
          child: TextField( keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: 'Rate on Interest',
                hintText: 'In percent',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                )
            ),

          ),
        ),

          Padding(
            padding: EdgeInsets.only(top: _minpadding ,bottom:_minpadding),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField( keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'Term',
                        hintText: 'In years',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),

                  ),
                ),

               Container(width: _minpadding * 5,),
               Expanded(child: DropdownButton<String>(
                  items: _currencies.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: currencyselected,
                  onChanged: (newValueSelected){
                    //code tumhara
                  },
                ))],
            )
          ),

        Padding(
          padding: EdgeInsets.only(top: _minpadding ,bottom:_minpadding),
          child: Row(  children: <Widget>[

            Expanded(child: ElevatedButton(
              child: Text('Calculate'),
              onPressed: (){
                
              },
            )) ,
Container(width: _minpadding * 2,),
            Expanded(child: ElevatedButton(
              child: Text('Reset'),
              onPressed: (){

              }),
            )
          ],

          )),

          ],
        ),
      ),
  );
}

Widget getImageAsset(){

  AssetImage assetImage= AssetImage('images/money.png');
  Image image= Image( image: assetImage, height: 175, width: 175);
  return Container(child: image,
                    margin: EdgeInsets.all(_minpadding * 20),);
}
}