import 'package:flutter/material.dart';
import 'package:users_app/models/users_model.dart';
import 'package:users_app/screens/screen_details.dart';
import 'package:users_app/widgets/users_container.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Users> data = [];
  fetchData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        data = usersFromJson(response.body);
      });
    } else {
      print("Error");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Users',
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: data.isEmpty
          ? CircularProgressIndicator()
          : ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ScreenDetail(
                          id: data[index].id,
                          email: data[index].email,
                          phone: data[index].phone,
                          username: data[index].username,
                          name: data[index].name,
                        );
                      },
                    ));
                  },
                  child: UsersContainerWidget(
                    id: data[index].id,
                    name: data[index].name,
                    email: data[index].email,
                    phone: data[index].phone,
                    username: data[index].username,
                  ),
                );
              },
            ),
    );
  }
}
