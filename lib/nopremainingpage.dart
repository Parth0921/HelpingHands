import 'package:flutter/material.dart';
import 'package:my_project/models/auth_models.dart' as model;
import 'package:my_project/provider/user_provider.dart';
import 'package:provider/provider.dart';
import 'edit_profile_page.dart';
import 'settings_page.dart';

class nopRemaining extends StatefulWidget {
  const nopRemaining({Key? key}) : super(key: key);

  @override
  State<nopRemaining> createState() => _nopRemainingState();
}

class _nopRemainingState extends State<nopRemaining> {
  @override
  void initState() {
    addData();
    super.initState();
  }

  addData() async {
    UserProvider _userProvider = Provider.of(context, listen: false);
    await _userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    model.User user = Provider.of<UserProvider>(context).getUser;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food for people'),
      ),
      // appBar: AppBar(
      //   title: const Text("My Profile"),
      //   // automaticallyImplyLeading: false,
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: const Icon(Icons.person),
      //   ),
      //   actions: [
      //     IconButton(
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => settings_page()),
      //           );
      //         },
      //         icon: const Icon(Icons.settings)),
      //   ],
      // ),

// -------------------------------------------------------------------------------------------
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),

          const SizedBox(
            height: 20,
          ),

// -------------------------------------------------------------------------------------------
          Card(
            child: ListTile(
              title: Text('Number of people remaining: ' +
                  user.numberOfPeople), // backend
              onTap: () {},
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
} // stateless widget
