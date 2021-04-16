import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class credits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text('Credits'),
          backgroundColor: Colors.black,
          actions: <Widget>[
            PopupMenuButton(
              itemBuilder: (context) {
                var list = List<PopupMenuEntry<Object>>();
                list.add(
                  PopupMenuItem(
                    child: Text("Setting Language",textAlign: TextAlign.center,),
                    value: 1,
                  ),
                );
                list.add(
                  PopupMenuDivider(
                    height: 10,
                  ),
                );
                list.add(
                  CheckedPopupMenuItem(
                    child: Text(
                      "English",
                      style: TextStyle(color: Colors.black),
                    ),
                    value: 2,

                  ),
                );
                list.add(
                  CheckedPopupMenuItem(
                    child: Text(
                      "Kannada",
                      style: TextStyle(color: Colors.black),
                    ),
                    value: 3,

                  ),
                );
                return list;
              },

            ),
          ],
        ),
       body: new Container(
         color: Colors.black,
         child: new ListView(
           children: <Widget>[
             new Column(
               children : <Widget>[
                 new Padding(padding: EdgeInsets.only(top:40.0)),
                new Text('Designed and Developed By :',style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.grey),),
                new Padding(padding: EdgeInsets.only(top:20.0)),
                new Text('Rayson Lawrence Dsouza & Sarvesh SP',style: new TextStyle(fontSize: 15.0,color: Colors.grey),),
             ],
       ),
             new Column(
               children: <Widget>[
                 new Padding(padding: EdgeInsets.only(top:40.0)),
                 new Text('Team Members :',style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.grey),),
                 new Padding(padding: EdgeInsets.only(top:20.0)),
                 new Text('Shravan A Shetty',style: new TextStyle(fontSize: 15.0,color: Colors.grey),),
                 new Padding(padding: EdgeInsets.only(top:20.0)),
                 new Text('Santhosh G Patkar',style: new TextStyle(fontSize: 15.0,color: Colors.grey),),
                 new Padding(padding: EdgeInsets.only(top:20.0)),
                 new Text('Tushar Shetty',style: new TextStyle(fontSize: 15.0,color: Colors.grey),),
                 new Padding(padding: EdgeInsets.only(top:20.0)),
                 new Text('Prajwal Shetty',style: new TextStyle(fontSize: 15.0,color: Colors.grey),),
                 new Padding(padding: EdgeInsets.only(top:20.0)),
                 new Text('Shashank Maheshwar',style: new TextStyle(fontSize: 15.0,color: Colors.grey),),
                 new Padding(padding: EdgeInsets.only(top:20.0)),
                 new Text('Vinith P Nayak',style: new TextStyle(fontSize: 15.0,color: Colors.grey),),
                 new Padding(padding: EdgeInsets.only(top:20.0)),
                 new Text('Rakshak Shet',style: new TextStyle(fontSize: 15.0,color: Colors.grey),),
                 new Padding(padding: EdgeInsets.only(top:20.0)),
                 new Text('Sharana',style: new TextStyle(fontSize: 15.0,color: Colors.grey),),
               ],

             )

           ],
         ),
       ),
      ),
    );
  }
}
