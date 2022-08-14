import 'package:book_app/pages/login_page.dart';
import 'package:book_app/pages/music_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final login =
      "https://i.pinimg.com/736x/96/14/41/961441ac981ada78f04b0ec5e1503e21.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Book App"),
                accountEmail: Text("nikeshnet.nd@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(login),
                ),
                decoration: BoxDecoration(color: Colors.pink),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                size: 25,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (Context) => LoginPage()));
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.music_note_2,
                size: 25,
              ),
              title: Text(
                "Music",
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MusicPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
