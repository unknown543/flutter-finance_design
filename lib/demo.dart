//import 'package:flutter/material.dart';
//
//void main() => runApp(
//  MaterialApp(
//    debugShowCheckedModeBanner: false,
//    home: Scaffold(
//      backgroundColor: Colors.white,
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.linked_camera),
//        onPressed: () {},
//      ),
//      floatingActionButtonLocation:
//      FloatingActionButtonLocation.centerDocked,
//      bottomNavigationBar: ClipPath(
//        clipper: Custom(),
//        child: Container(
//          height: 150.0,
//          color: const Color(0xff6a52c3),
//        ),
//      ),
//    ),
//  ),
//);
//
//class Custom extends CustomClipper<Path> {
//  @override
//  Path getClip(Size size) {
//    var path = Path();
//
//    path.lineTo(size.width / 16, 0.0);
//    path.quadraticBezierTo(
//      size.width / 4,
//      0.0,
//      size.width / 3.0,
//      size.height / 6.0,
//    );
//
//    path.quadraticBezierTo(
//      size.width / 1.90,
//      size.height / 2.00,
//      size.width / 1.40,
//      size.height / 10,
//    );
//
//    path.quadraticBezierTo(
//      size.width / 1.25,
//      0.0,
//      size.width / 1.05,
//      0.0,
//    );
//
//    path.lineTo(size.width, 0.0);
//    path.lineTo(size.width, size.height);
//    path.lineTo(0.0, size.height);
//
////    path.lineTo(0.0, size.height);
////    path.arcToPoint(Offset(size.width, size.height),
////        radius: Radius.elliptical(30, 10));
////    path.lineTo(size.width, 0);
////    path.lineTo(size.width / 14, 0.0);
////
////    var fc1 = Offset(size.width / 4, 0.0);
////    var fe1 = Offset(size.width / 3.50, size.height / 3.0);
////    path.quadraticBezierTo(fc1.dx, fc1.dy, fe1.dx, fe1.dy);
////
////    var fc2 = Offset(size.width / 3.25, size.height / 2.0);
////    var fe2 = Offset(size.width / 2.75, size.height / 2.0);
////    path.quadraticBezierTo(fc2.dx, fc2.dy, fe2.dx, fe2.dy);
////
////    var fc3 = Offset(size.width / 2.0, size.height / 1.75);
////    var fe3 = Offset(size.width / 1.25, 0.0);
////    path.quadraticBezierTo(fc3.dx, fc3.dy, fe3.dx, fe3.dy);
////
//////     path.lineTo(size.width / 2.0, 0.0);
////
//////     path.lineTo(size.width / 1.50, 0.0);
////
////    path.lineTo(size.width, 0.0);
////    path.lineTo(size.width, size.height);
////    path.lineTo(0.0, size.height);
//    path.close();
//    return path;
//  }
//
//  @override
//  bool shouldReclip(CustomClipper<Path> oldClipper) {
//    return false;
//  }
//}
