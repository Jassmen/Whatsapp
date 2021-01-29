import 'package:flutter/material.dart';
import 'package:whatsapp/status/status.dart';

import 'chats/chat.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: Colors.teal),
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          initialIndex: 1,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal[800],
              title: Text(
                'WhatsApp',
                style: TextStyle(color: Colors.white),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  SizedBox(
                    width: 10,
                    child: Tab(
                      child: Icon(Icons.camera_alt,),
                    ),
                  ),
                  Tab(text: 'CHATS'),
                  Tab(text: 'STATUS'),
                  Tab(text: 'CALLS'),
                ],
              ),
            ),
            body: buildContentsScreen(),/*
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color(0xFF4AC959),
              child: Icon(Icons.chat),
            ),*/
          ),
        ));
  }

  TabBarView buildContentsScreen() {
    return TabBarView(
            children: [
              Icon(Icons.directions_car),
              Chat(),
              Status(),
              Icon(Icons.directions_bike),
            ],
          );
  }
}
