import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:proj_farmer/Banana.dart';
import 'package:proj_farmer/Chickoo.dart';
import 'package:proj_farmer/SugarCane.dart';
import 'package:proj_farmer/credits.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_login/flutter_login.dart';
import 'Jasmine.dart';
import 'Banana.dart';
import 'Chickoo.dart';
import 'SugarCane.dart';
import 'credits.dart';
import 'expansion.dart';

void main() {
  runApp(splashscreen());
}

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grow It',

      home: new Scaffold(
        body: new Container(
          alignment: Alignment.center,
          child: AnimatedSplashScreen(
            splash: new Icon(
              MdiIcons.sprout,
              color: Colors.white,
              size: 150,
            ),
            nextScreen: MainPage(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.black,
            duration: 3000,
          ),
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController tabs;
  String text = '';
  void method1(value) {
    setState(() {
      text = value;
    });
  }

  void twitter() {
    String url = 'https://twitter.com/smvitm?lang=en';
    launch(url);
  }

  void facebook() {
    String url = 'https://www.facebook.com/officialsmvitm/';
    launch(url);
  }

  void insta() {
    String url = 'https://www.instagram.com/smvitm.sode';
    launch(url);
  } //For Example...Change it for mail

  void openURL() {
    String url = 'https://sode-edu.in/';
    launch(url);
  }

  void initState() {
    tabs = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text('Grow It'),
          backgroundColor: Colors.black,
          actions: <Widget>[
            PopupMenuButton(
              itemBuilder: (context) {
                var list = List<PopupMenuEntry<Object>>();
                list.add(
                  PopupMenuItem(
                    child: Text(
                      "Setting Language",
                      textAlign: TextAlign.center,
                    ),
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
        drawer: new Drawer(
          child: new Container(
            color: Colors.black,
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                        image: AssetImage('assets/images/smvitm.png'),
                        fit: BoxFit.contain),
                  ),
                ),
                new ListTile(
                  title: new Text(
                    'Jasmine',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  leading: new Icon(MdiIcons.flower, color: Colors.white),
                  trailing: new Icon(Icons.arrow_forward, color: Colors.white),
                  onTap: () => {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new jasmine()))
                  },
                ),
                new ListTile(
                  title: new Text(
                    'Banana',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  leading: new Icon(MdiIcons.fruitCherries, color: Colors.red),
                  trailing: new Icon(Icons.arrow_forward, color: Colors.white),
                  onTap: () => {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new banana()))
                  },
                ),
                new ListTile(
                  title: new Text(
                    'Chickoo',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  leading: new Icon(MdiIcons.fruitCherries, color: Colors.red),
                  trailing: new Icon(Icons.arrow_forward, color: Colors.white),
                  onTap: () => {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new chickoo()))
                  },
                ),
                new ListTile(
                  title: new Text(
                    'SugarCane',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  leading: new Icon(
                    MdiIcons.sproutOutline,
                    color: Colors.green,
                  ),
                  trailing: new Icon(Icons.arrow_forward, color: Colors.white),
                  onTap: () => {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new sugarcane()))
                  },
                ),
                new ListTile(
                  title: new Text(
                    'Credits',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  leading: new Icon(
                    MdiIcons.fileDocument,
                    color: Colors.blue,
                  ),
                  trailing: new Icon(Icons.arrow_forward, color: Colors.white),
                  onTap: () => {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new credits()))
                  },
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: new Material(
            color: Colors.black,
            child: new TabBar(controller: tabs, tabs: <Widget>[
              new Tab(
                icon: new Icon(MdiIcons.home),
              ),
              new Tab(
                icon: new Icon(MdiIcons.share),
              ),
              new Tab(
                icon: new Icon(MdiIcons.information),
              )
            ])),
        body: new Container(
          color: Colors.black,
          child: new TabBarView(
            controller: tabs,
            children: <Widget>[
              new Container(
                child: new ListView(
                  children: <Widget>[
                    new ListTile(
                      title: new Text(
                        'Home',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                      ),
                      trailing: new FlatButton(onPressed:(){Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new expansion()));} ,child :new Text(
                        'FAQ',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                      ),
                    ),
                    ),
                    new ListTile(),
                    CarouselSlider(
                        options: CarouselOptions(
                            height: 300.0,
                            viewportFraction: 0.9,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            initialPage: 0,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal),
                        items: [
                          new Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/farmer1.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                image: DecorationImage(
                                  image:
                                  AssetImage('assets/images/farmer2.jpg'),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                image: DecorationImage(
                                  image:
                                  AssetImage('assets/images/farmer3.jpg'),
                                  fit: BoxFit.cover,
                                )),
                          )
                        ]),
                    new ListTile(),
                    new ListTile(
                      title: new Center(
                        child: Text(
                          'This App Gives the information of all the requirements,resources available for Farmer to grow a crop locally',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: 'Raleway',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'Share Us Your Thoughts',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Colors.white),
                      suffixIcon: Icon(
                        Icons.verified_user,
                        color: Colors.blue,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white),
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Comments',
                      hintStyle: TextStyle(color: Colors.white),
                      suffixIcon: Icon(
                        Icons.thumb_up,
                        color: Colors.blue,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  new RaisedButton(
                    onPressed: () {
                      method1('Your Email is Sent');
                    },
                    child: new Text('Submit',
                        style: TextStyle(color: Colors.white)),
                    color: Colors.blue,
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  new Text(
                    'Or',
                    style: TextStyle(color: Colors.white),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  new Row(
                    children: <Widget>[
                      new Padding(
                        padding: EdgeInsets.only(left: 100.0),
                      ),
                      new Text(
                        'Follow Us On :',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0),
                        textAlign: TextAlign.center,
                      ),
                      new IconButton(
                          icon: new Image.asset('assets/images/twitter.jpg',
                              height: 25.0, width: 30.0),
                          onPressed: () {
                            twitter();
                          }),
                      new IconButton(
                          icon: new Image.asset('assets/images/facebook.jpg',
                              height: 25.0, width: 30.0),
                          onPressed: () {
                            facebook();
                          }),
                      new IconButton(
                          icon: new Image.asset('assets/images/instagram.jpg',
                              height: 25.0, width: 30.0),
                          onPressed: () {
                            insta();
                          }),
                    ],
                  )
                ],
              ),
              new Container(
                  child: new ListView(
                    children: <Widget>[
                      new ListTile(),
                      new ListTile(
                        title: new Text(
                          'About SMVITM',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                      new ListTile(
                        title: new Image.asset(
                          'assets/images/smvitm.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                      ),
                      new ListTile(
                        title: new Text(
                          'Shri Madhwa Vadiraja Institute of Technology & Management (SMVITM),'
                              ' situated at Bantakal in Udupi has carved a niche for itself in imparting quality engineering education in the coastal Karnataka region.'
                              ' Shri Swamiji started the institute with the sublime objective of providing quality higher education to the needy student community at affordable costs. '
                              'The motto Engineering your Career and Character with Care well reflects the objectives and philosophy of the institute.'
                              ' Despite, being the youngest institute in the region, SMVITM has made remarkable strides in its journey towards excellence over the past five years and has emerged as the most promising engineering institute with its well-qualified and motivated faculty, '
                              'state-of-the-art infrastructure and distinguished learning-centric facilities.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      new ListTile(),
                      new ListTile(
                        title: new Container(
                          child: new FlatButton(
                            child: Text(
                              "Click Here for More Info",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                              ),
                            ),
                            onPressed: () {
                              openURL();
                            },
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
