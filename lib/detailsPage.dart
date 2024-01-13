import 'package:api_app/userService.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final User user;

   DetailsPage({Key? key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('${user.name.first} ${user.name.last}'),
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Image.network(user.picture),
          const SizedBox(
            height: 30,
          ),
          Text(user.email)
        ],),
      ),
    );
  }

}
