import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  var height, width;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerEnableOpenDragGesture: false,
        appBar: new AppBar(
          // backgroundColor: Colors.white,
          title: Row(
            children: [
              Image.asset(
                'gambar/umkt2.png',
                scale: 12,
              ),
              const SizedBox(
                width: 10,
              ),
              // const Text(
              //   'FlutterBeads',
              //   style: TextStyle(color: Colors.black), //<-- SEE HERE
              // ),
            ],
          ),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.account_circle_sharp), onPressed: () {}),
          ],
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
              // SwitchListTile(
              //   title: const Text('Lights'),
              //   value: _lights,
              //   onChanged: (bool value) {
              //     setState(() {
              //       _lights = value;
              //     });
              //   },
              //   secondary: const Icon(Icons.lightbulb_outline),
              // ),
              const Divider(height: 0),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
          ),
        ),
        body: CustomScrollView(slivers: <Widget>[
          // SliverAppBar(
          //   backgroundColor: Colors.white,
          //   expandedHeight: 200.0,
          //   flexibleSpace: FlexibleSpaceBar(),
          // ),
          SliverPadding(
              padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome, UMKT',
                            style: TextStyle(
                              fontSize: 18,
                              height: 1,
                              // fontStyle: FontStyle.i talic,
                              // color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Padding(
                              padding: EdgeInsets.only(
                                  left: 5,
                                  bottom: 10,
                                  right: 20,
                                  top: 10), //apply padding to some sides only
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                        child: Icon(
                                      Icons.calendar_today_sharp,
                                      size: 20,
                                    )),
                                    TextSpan(
                                      text: "   UMKT ID",
                                    ),
                                  ],
                                ),
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 5,
                                  bottom: 10,
                                  right: 20,
                                  top: 0), //apply padding to some sides only
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                        child: Icon(
                                      Icons.email,
                                      size: 20,
                                    )),
                                    TextSpan(
                                      text: "   Emailpegawai@email.com",
                                    ),
                                  ],
                                ),
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 5,
                                  bottom: 10,
                                  right: 20,
                                  top: 0), //apply padding to some sides only
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                        child: Icon(
                                      Icons.home,
                                      size: 20,
                                    )),
                                    TextSpan(
                                      text: "   Fakultas Ilmu Kemasyarakatan",
                                    ),
                                  ],
                                ),
                              )),
                          // ClipOval(
                          //   child: Image(
                          //       width: 300,
                          //       height: 300,
                          //       image: AssetImage('gambar/umkt2.png'),
                          //       fit: BoxFit.cover),
                          // ),
                          // Image.asset(
                          //   'gambar/umkt2.png',
                          //   scale: 12,
                          // ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 18,
                              // left: 15,
                              // right: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Search',
                          suffixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                    SizedBox(height: 20),
                    Text('Kepegawaian',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: <Widget>[
                          MenuIcon(
                            icon: 'gambar/umkt2.png',
                            iconColor: Colors.black,
                            label: 'hotel',
                          ),
                          MenuIcon(
                            icon: 'gambar/umkt2.png',
                            iconColor: Colors.black,
                            label: 'hotel',
                          ),
                          MenuIcon(
                            icon: 'gambar/umkt2.png',
                            iconColor: Colors.black,
                            label: 'hotel',
                          ),
                          MenuIcon(
                            icon: 'gambar/umkt2.png',
                            iconColor: Colors.black,
                            label: 'hotel',
                          ),
                          MenuIcon(
                            icon: 'gambar/umkt2.png',
                            iconColor: Colors.black,
                            label: 'hotel',
                          ),
                          MenuIcon(
                            icon: 'gambar/umkt2.png',
                            iconColor: Colors.black,
                            label: 'hotel',
                          ),
                          MenuIcon(
                            icon: 'gambar/umkt2.png',
                            iconColor: Colors.black,
                            label: 'hotel',
                          ),
                        ]),
                    SizedBox(height: 20),
                    Text('Akademik',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: <Widget>[
                          MenuIcon(
                            icon: 'gambar/umkt2.png',
                            iconColor: Colors.black,
                            label: 'hotel',
                          ),
                          MenuIcon(
                            icon: 'gambar/umkt2.png',
                            iconColor: Colors.black,
                            label: 'hotel',
                          ),
                          MenuIcon(
                            icon: 'gambar/umkt2.png',
                            iconColor: Colors.black,
                            label: 'hotel',
                          ),
                          MenuIcon(
                            icon: 'gambar/umkt2.png',
                            iconColor: Colors.black,
                            label: 'hotel',
                          ),
                        ]),
                    SizedBox(height: 20),
                    Text('Evaluasi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: <Widget>[
                          MenuIcon(
                            icon: 'gambar/umkt2.png',
                            iconColor: Colors.black,
                            label: 'hotel',
                          ),
                          MenuIcon(
                            icon: 'gambar/umkt2.png',
                            iconColor: Colors.black,
                            label: 'hotel',
                          ),
                          MenuIcon(
                            icon: 'gambar/umkt2.png',
                            iconColor: Colors.black,
                            label: 'hotel',
                          ),
                        ]),
                  ],
                ),
              )),
        ]));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class MenuIcon extends StatelessWidget {
  final String icon;
  final Color iconColor;
  final String label;

  MenuIcon({this.icon, this.iconColor, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                icon,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              )),
        ],
      ),
    );
  }
}

class navBarakun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('MY UMKT'),
              accountEmail: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.work, size: 14),
                    ),
                    TextSpan(
                      text: " Jabatan",
                    ),
                  ],
                ),
              )),
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
          ListView(
            children: [
              ListTile(
                leading: Switch(
                  value: null,
                  onChanged: (value) {},
                  activeTrackColor: Colors.lightBlue,
                  activeColor: Colors.blue,
                ),
                title: Text('Dark Mode'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
