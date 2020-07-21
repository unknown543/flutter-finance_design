import 'package:finance/confirm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.white
      ),
      home: Home(),
    );
  }
}

class Person {
  String name, balance, image;

  Person(this.name, this.balance, this.image);
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var person = <Person>[
    Person("Ankit", "\$100", "assets/i1.jpg"),
    Person("Shubham", "\$200", "assets/i1.jpg"),
    Person("Ravi", "\$300", "assets/i1.jpg"),
    Person("Shubham Kori", "\$400", "assets/i1.jpg"),
  ];
  var sckey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      key: sckey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff6a52c3),
        leading: Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          Icon(Icons.menu),
          const SizedBox(width: 10),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 170,
                width: MediaQuery.of(context).size.width,
                color: Color(0xff6a52c3),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Total Balance",
                      style: TextStyle(
                        color: Color(0xffa9a9a9),
                      ),
                    ),
                    SizedBox(height: 5),
                    const Text(
                      "\$12,698",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 95.0),
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "Choose Card",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              color: const Color(0xffe55f91),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.android,
                                            color: Colors.white),
                                        Spacer(),
                                        Icon(Icons.check_circle,
                                            color: Colors.white),
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      "Balance",
                                      style: TextStyle(
                                        color: const Color(0xffed93b6),
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      "\$8,567",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 5.0),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              color: const Color(0xffffffff),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.android,
                                          color: Colors.black,
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.check_circle,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      "Balance",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w100),
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      "\$8,567",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Favorites",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Container(
                        height: 70.0,
                        margin: EdgeInsets.only(top: 5.0),
                        child: ListView.builder(
                          itemCount: person.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, position) {
                            return GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  backgroundColor: const Color(0xfff8f8f8),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      topRight: Radius.circular(40.0),
                                    ),
                                  ),
                                  context: context,
                                  builder: (context) =>
                                      bottomSheet(person[position], context),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.all(5.0),
                                padding: EdgeInsets.all(25.0),
                                height: 50.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(person[position].image),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

bottomSheet(Person person, BuildContext buildContext) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Selected",
                  style: TextStyle(
                    color: Color(0xffa9a9a9),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  "${person.name}",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.white,
              child: Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.all(25.0),
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(person.image),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                height: 50.0,
//                color: const Color(0xff989898),
                child: RaisedButton(
                  onPressed: () {},
                  color: const Color(0xffEAEAEA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    person.balance,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
//                      Navigator.pop(buildContext);
                    Navigator.of(buildContext).push(
                      MaterialPageRoute(
                        builder: (buildContext) => Confirm(person: person),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: const Color(0xffe55f91),
                  child: Text(
                    "Send",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
