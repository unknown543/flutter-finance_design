import 'package:finance/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Confirm extends StatelessWidget {
  final Person person;

  Confirm({this.person});

  final white = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
//    print(person.name);
    debugPrint('data :${person.balance}');
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: white,
        elevation: 0.0,
        actions: <Widget>[
          SizedBox(width: 10.0),
          Icon(Icons.arrow_back_ios, color: Colors.grey),
          Spacer(),
          Icon(Icons.menu, color: Colors.grey),
          SizedBox(width: 10.0),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: IntrinsicWidth(
              child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 200.0,
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Sending money\nto ${person.name}",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black54,
//                    fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 50.0,
                    color: const Color(0xffffffff),
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: const Color(0xfff1f1f1),
                      child: Text(
                        "${person.balance}",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 80.0,
        width: 80.0,
        child: FloatingActionButton(
          elevation: 10.0,
          onPressed: () {},
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(person.image),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipPath(
        clipper: Custom(),
        child: Container(
          height: 170.0,
          padding:
              EdgeInsets.only(right: 20.0, left: 20.0, top: 80.0, bottom: 10.0),
          color: const Color(0xff6a52c3),
          child: Center(
            child: SizedBox(
              height: 50.0,
              width: double.infinity,
              child: RaisedButton(
                color: const Color(0xffe55f91),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "${person.balance} send to ${person.name}",
                    gravity: ToastGravity.BOTTOM,
                  );
                },
                child: Text(
                  "Confirm",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Custom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(size.width / 12, 0.0);
    path.quadraticBezierTo(
      size.width / 4.0,
      0.0,
      size.width / 2.75,
      size.height / 4.0,
    );

    path.quadraticBezierTo(
      size.width / 2.0,
      size.height / 1.75,
      size.width / 1.55,
      size.height / 4,
    );

//     path.quadraticBezierTo(
//       size.width / 1.40,
//       0.0,
//       size.width/1.20,
//       0.0,
//     );

    path.quadraticBezierTo(
      size.width / 1.30,
      0.0,
      size.width / 1.10,
      0.0,
    );

    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
