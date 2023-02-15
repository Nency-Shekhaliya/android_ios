import 'package:flutter/material.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({Key? key}) : super(key: key);

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.amber,
    );
  }
}
