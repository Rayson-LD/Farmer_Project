import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class jasmine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
        centerTitle: true,
        title: new Text('Jasmine'),
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
              new ListTile(
                title: new Text('Dashboard',textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0,color: Colors.grey),),
              ),
              new Padding(padding: EdgeInsets.only(top: 50.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Card(
                      child: new Container(
                        padding: new EdgeInsets.all(40.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children :<Widget>[

                            new Icon(MdiIcons.spray,size: 48.0),
                            new Text('Buy Fertilizers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                      borderOnForeground: true,
                      color : Colors.red
                  ),

                  new Card(
                      child: new Container(
                        padding: new EdgeInsets.all(40.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children :<Widget>[

                            new Icon(MdiIcons.leaf,size: 50.0),
                            new Text('Plantation',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                      borderOnForeground: true,
                      color : Colors.red
                  ),
                ],
              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Card(
                      child: new Container(
                        padding: new EdgeInsets.all(40.0),
                        child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children :<Widget>[

                          new Icon(MdiIcons.flower,size: 50.0),
                          new Text('Buy Flowers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.center,),
                        ],
                      ),
                  ),
                      borderOnForeground: true,
                      color : Colors.red
                  ),

                  new Card(
                      child: new Container(
                        padding: new EdgeInsets.all(40.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children :<Widget>[

                            new Icon(MdiIcons.seed,size: 50.0),
                            new Text('Buy Seeds',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                      borderOnForeground: true,
                      color : Colors.red
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
