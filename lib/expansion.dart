import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class ExpansionItems{
  bool isExpanded;
  final String header;
  final String body;

  ExpansionItems({this.isExpanded: false,this.header,this.body});
}
class expansion extends StatefulWidget {
  @override
  _expansionState createState() => _expansionState();
}

class _expansionState extends State<expansion> {
  List<ExpansionItems> items = <ExpansionItems>[
    ExpansionItems(header : "To whom this app is helpful ?",body:"The app is basically helpful for coastal karnatak people as the crops mentioned in this app are grown in that area"),
    ExpansionItems(header : "How to check the subsidies available to farmers ?",body:"Click on any one of the images in homepage that will direct you to government websites which have the details"),
    ExpansionItems(header : "What information does this app contain on particular crop ?",body:"This app gives you the plantation method, saplings market locations, where to buy plants etc.."),
    ExpansionItems(header : "Does this app perform mallige rate calculations ?",body:"No, This app is mainly focused on crop development and its use"),
    ExpansionItems(header : "How to connect with us ?",body:"You can always connect with us via email, twitter, facebook, and instagram for further details on app"),

  ];
  debugShowCheckedModeBanner: false,
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text('FAQ'),
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
            child : ListView(
              children: <Widget>[
                ExpansionPanelList(
                  expansionCallback: (int index,bool isExpanded){
                    setState(() {
                      items[index].isExpanded = !items[index].isExpanded;
                    });
                  },
                  children: items.map((ExpansionItems items){
                    return ExpansionPanel(
                        headerBuilder : (BuildContext context,bool isExpanded)
                        {
                          return Container(
                            color: Colors.black,
                            child: Text(items.header,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20.0),),
                          );
                        },
                        isExpanded: items.isExpanded,
                        body : Container(
                          color: Colors.black,
                          child : Text(items.body,style: TextStyle(color: Colors.grey,fontSize: 15.0),),
                        )
                    );
                  }).toList(),
                )
              ],

            )
        ),
      ),
    );
  }
}
