import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailContainer extends StatelessWidget {
  String title,subtitle;
   DetailContainer({Key? key,required this.title,required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
    );
  }
}
