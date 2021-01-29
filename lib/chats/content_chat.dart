import 'package:flutter/material.dart';
import 'package:whatsapp/model/chat_item_model.dart';
import 'package:whatsapp/model/content_detail.dart';

import 'chat.dart';

class ContentChat extends StatelessWidget {
  final String name;
  final String lastSeen;
  final String image;

  ContentChat({this.name, this.lastSeen, this.image});
  @override
  Widget build(BuildContext context) {
   List<ChatItemModel> currentChat =ChatItemModel.list;
    String currentUser='1';
    String pairId='2';


    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BuildAppBar(image: image, name: name, lastSeen: lastSeen),
              // ListView.builder(itemBuilder: null)
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      image:DecorationImage(
                         image: AssetImage('assets/wallpaper.jpg',),
                        fit: BoxFit.cover
                      )
                  ),
                  child: ListView.builder(
                    itemBuilder: (context, int index) {
                      return Row(
                        mainAxisAlignment: currentChat[index].senderId ==currentUser ?
                        MainAxisAlignment.start:MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * .7
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 9),
                            margin: EdgeInsets.symmetric(horizontal: 12,vertical: 9),
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color:currentChat[index].senderId == currentUser ? Colors.white : Color(0xFFDCF8C6),
                            ),
                              child: Text('${currentChat[index].message} ')),
                        ],
                      );
                    },
                    itemCount: currentChat.length,
                    shrinkWrap: true,
                  ),
                ),
              ),
               WriteAMessage()
            ]));
  }
}

class WriteAMessage extends StatelessWidget {
  const WriteAMessage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.tag_faces,
                    color: Colors.grey,
                  ),
                  // SizedBox(width: 5,),
                  Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type a message',
                            contentPadding:
                                EdgeInsets.only(left: 5),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            )),
                      )),
                  // SizedBox(width: 5,),
                  Icon(
                    Icons.attach_file,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.camera_alt,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.teal,
            ),
            child: IconButton(
              icon: Icon(
                Icons.mic,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({
    Key key,
    @required this.image,
    @required this.name,
    @required this.lastSeen,
  }) : super(key: key);

  final String image;
  final String name;
  final String lastSeen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40,
          child: Container(
            color: Colors.teal.withOpacity(.9),
          ),
        ),
        Container(
          width: double.infinity,
          height: 60,
          color: Colors.teal,
          padding: EdgeInsets.only(right: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CircleAvatar(
                backgroundImage: AssetImage(image),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'last seen at ' + lastSeen,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              Icon(
                Icons.videocam,
                color: Colors.white,
              ),
              Icon(
                Icons.call,
                color: Colors.white,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}


