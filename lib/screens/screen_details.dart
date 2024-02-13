import 'package:flutter/material.dart';
import 'package:users_app/widgets/detail_container.dart';

class ScreenDetail extends StatelessWidget {
  String name,email,phone,username;
  int id;
   ScreenDetail({Key? key,required this.phone,required this.name,required this.username,required this.email,required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details',style: TextStyle(fontWeight: FontWeight.bold),)),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          CircleAvatar(radius: 50,child: Text(style: TextStyle(fontSize: 40),id.toString()),),
          DetailContainer(title: 'Name', subtitle: name),
          DetailContainer(title: 'Username', subtitle: username),
          DetailContainer(title: 'Phone', subtitle: phone),
          DetailContainer(title: 'Email', subtitle: email),
        ]),
      ),
    );
  }
}
