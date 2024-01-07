import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
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
      body: SafeArea(
        child: Column(
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //   ),
            //   height: height * 0.1,
            //   width: width,
            //   child: Padding(
            //       padding: EdgeInsets.only(
            //         top: 5,
            //         left: 15,
            //         right: 15,
            //       ),
            //       child: Row(
            //         children: [
            //           InkWell(
            //             onTap: () {},
            //             child: Icon(
            //               Icons.account_circle_outlined,
            //               size: 25,
            //             ),
            //           )
            //         ],
            //       )),
            // ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(30)),
              height: height * 0.2,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Apa kabar',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1,
                      // fontStyle: FontStyle.i talic,
                      // color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('gambar/umkt2.png'),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle)),
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
          ],
        ),
      ),
    );
  }
}
