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
    ExpansionItems(header : "header",body:"This is the description"),
    ExpansionItems(header : "header",body:"This is the description"),
    ExpansionItems(header : "header",body:"This is the description"),
    ExpansionItems(header : "header",body:"This is the description"),
    ExpansionItems(header : "header",body:"This is the description"),

  ];
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