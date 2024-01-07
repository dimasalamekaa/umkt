// import 'package:flutter/material.dart';

// import 'dashboard.dart';

// void main() {
//   // HttpOverrides.global = new MyHttpOverrides();
//   runApp(MyUMKT());
// }

// class MyUMKT extends StatelessWidget {
//   // const MyApp ({super.key});
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My UMKT',
//       debugShowCheckedModeBanner: false,
//       home: Dashboard(),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Example"),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text("Flutter Drawer Example"),
      ),
      endDrawer: Drawer(
        //Add a ListView to the Drawer.
        child: ListView(
          //Ensure that ListView doesn't have any padding.
          // This line will remove any padding from the ListView
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Image.asset("gambar/umkt2.png"),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today_sharp),
              title: Text('UMKTID'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text('Nama Bergelar'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Homebase'),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('No Telp'),
            ),
            const Divider(height: 0),
            // SwitchListTile(
            //   value: null,
            //   title: Text('Dark Mode'),
            //   onChanged: (value) {},
            //   activeTrackColor: Colors.lightBlue,
            //   activeColor: Colors.blue,
            // ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Dark Mode'),
            ),
            SwitchListTile(
              // tileColor: Colors.red,
              title: const Text('Dark Mode'),
              value: value,
              onChanged: (bool value) {},
            ),
            const Divider(height: 0),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
