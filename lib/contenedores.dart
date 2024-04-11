import 'package:flutter/material.dart';

class Contenedores extends StatelessWidget {
  const Contenedores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(60.0),
      children: [
        _basic(),
        _borders(),
        _customBorders(),
        _borderRadius(),
        _CustomBorderRadius(),
        _gradient(),
        _boxShadow(),
        _backgroundImage()
      ],
    );
  }

  _basic() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Color(0xff9a35a8),
        height: 150.0,
      ),
    );
  }

  _borders() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Color(0xffe685f2),
            border: Border.all(
              color: Color(0xff6200bf),
              width: 4.0,
            )),
      ),
    );
  }

  _customBorders() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: const BoxDecoration(
            color: Color(0xfff9c473),
            border: Border(
                top: BorderSide(color: Color(0xff00fff3), width: 4.0),
                bottom: BorderSide(color: Color(0xff0ec808), width: 5.0))),
      ),
    );
  }

  _borderRadius() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Color(0xff85d3f2),
            borderRadius: BorderRadius.all(Radius.circular(32))),
      ),
    );
  }

  _CustomBorderRadius() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Color(0xff36d29f),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                bottomRight: Radius.circular(32))),
      ),
    );
  }

  _gradient() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
              Color(0xff136d18),
              Color(0xff107e92),
              Color(0xff9d6b0f)
            ])),
      ),
    );
  }

  _boxShadow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Color(0xff6d1a28),
            borderRadius: BorderRadius.all(Radius.circular(32)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[850]!.withOpacity(0.29),
                  offset: const Offset(-10, 10),
                  blurRadius: 10,
                  spreadRadius: 10)
            ]),
      ),
    );
  }

  _backgroundImage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Color(0xff6d1a28),
            borderRadius: BorderRadius.all(Radius.circular(32)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[850]!.withOpacity(0.29),
                  offset: const Offset(-10, 10),
                  blurRadius: 10,
                  spreadRadius: 10)
            ],
            image: const DecorationImage(
                image: AssetImage("assets/images/ye.jpg"), fit: BoxFit.cover)),
      ),
    );
  }
}
