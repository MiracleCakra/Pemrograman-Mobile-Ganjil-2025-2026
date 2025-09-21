import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("assets/Logo-Politeknik-Negeri-Malang.png"),
      width: 400,
      height: 400,
      fit: BoxFit.cover,
    );
  }
}