import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsersContainerWidget extends StatelessWidget {
  String name, username, email, phone;
  int id;
  UsersContainerWidget(
      {Key? key,
      required this.id,
      required this.username,
      required this.email,
      required this.phone,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(radius: 25,
              child: Text(
                  style: TextStyle(fontWeight: FontWeight.bold), id.toString()),
            ),
            Expanded(
              child: ListTile(
                title:
                    Text(style: TextStyle(fontWeight: FontWeight.bold), name),
                subtitle: Text(phone),
              ),
            )
          ],
        )
      ],
    );
  }
}
