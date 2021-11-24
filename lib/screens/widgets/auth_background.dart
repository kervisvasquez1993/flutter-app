import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color c = const Color.fromRGBO(144, 144, 144, 0.5);

    return Container(
      color: c,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: <Widget>[
          _PurpleBox(),
          HeaderIcons(),
          this.child,
        ],
      ),
    );
  }
}

class HeaderIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 70.0,
          horizontal: 100.0,
        ),
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        // child: Icon(
        //   Icons.person_pin,
        //   color: Colors.white,
        //   size: 100,
        // ),
        child: Image.asset('assets/logo.png'),
      ),
    );
  }
}

class _PurpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        height: size.height * 0.4,
        decoration: _builBoxDecoration(),
        child: Stack(
          children: [
            Positioned(child: _Bugble(), top: 10, left: 90),
            Positioned(child: _Bugble(), top: 90, left: -10),
            Positioned(child: _Bugble(), bottom: -50, right: -20),
            Positioned(child: _Bugble(), bottom: 120, right: 10),
          ],
        ));
  }

  BoxDecoration _builBoxDecoration() => BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(66, 165, 245, 1),
          Color.fromRGBO(66, 165, 245, 1),
        ]),
      );
}

class _Bugble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        color: Color.fromRGBO(255, 255, 255, 0.05),
      ),
    );
  }
}
