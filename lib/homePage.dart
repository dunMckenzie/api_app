import 'package:api_app/userService.dart';
import 'package:flutter/material.dart';
import 'detailsPage.dart';


class HomePage extends StatefulWidget {

  final items = List.generate(50, (i) => i);

   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<User>> futureUsers;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureUsers = UserService().getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Padding(
          padding: const EdgeInsets.only(left:100),
          child: const Text('People'),
        ),
          backgroundColor: Colors.blueAccent,),
        body: RefreshIndicator(
          onRefresh: () async {
            var users = await UserService().getUser();
            setState(() {
              futureUsers = Future.value(users);
            });
          },
          child: Center(
            child: FutureBuilder<List<User>>(
              future: futureUsers,
              builder: ((context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.seperated(
                      itemBuilder: (context, index) {
                        User user = snapshot.data?[index];
                        return ListTile(
                          title: Text(user.email),
                          subtitle: Text(user.name.first),
                          trailing: const Icon(Icons.chevron_right_outlined),
                          onTap: (() => {openPage(context, user)}),
                        );
                      },
                      seperatorBuilder: (context, index) {
                        return const Divider(color: Colors.redAccent);
                      },
                      itemCount: snapshot.data!.length
                  );
                }else if (snapshot.hasError) {
                  return Text('ERROR: ${snapshot.error}');
                }
                return const CircularProgressIndicator();
              }),
            ),
          ),)
    );
  }
  openPage(context, User user) {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => DetailsPage(
            user: user,
        )));
  }
}

