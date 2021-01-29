import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:whatsapp/chats/content_chat.dart';
import 'package:whatsapp/chats/profile_pic.dart';

import '../components/floating_action_button.dart';
import '../model/content_detail.dart';


class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView.builder(
          itemBuilder: (context, int index) {
            return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Row(
                children: <Widget>[
                  InkWell(
                    onTap:(){
  /***********************************************************************************/
                      _buildProfilePicDialog(context, index);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(contentDetails[index].url.length > 0 ? contentDetails[index].url : 'assets/default.png'), radius: 25,),
                    ),
                  ),
                  _buildContentDetail(context, index),
                ],),
                _buildSpacer(),
              ],);
          },
          itemCount: contentDetails.length,
          shrinkWrap: true,
        ),
        BuildFloatingActionButton(
          icon: Icons.chat,
        )
      ],
    );
  }

  Future _buildProfilePicDialog(BuildContext context, int index) {
    return showPlatformDialog(
                      context: context,
                      builder: (_) => BasicDialogAlert(
                          content:
                          Container(
                            //margin: EdgeInsets.all(2),
                            alignment: Alignment.topCenter,
                            height: 270,
                            width: MediaQuery.of(context).size.height / 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                               Stack(
                                 alignment: Alignment.topLeft,
                                 children: <Widget>[
                                   Container(
                                       padding: EdgeInsets.only(bottom:15),
                                     height: 240,
                                     width: MediaQuery.of(context).size.height / 2,
                                     decoration: BoxDecoration(

                                     ),
                                     child: Image.asset( contentDetails[index].url.length > 0 ?
                                     contentDetails[index].url : 'assets/default.png',fit: BoxFit.cover,),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top:8,left: 8),
                                     child: Text(contentDetails[index].name,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                                   ),
                                 ],
                               ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    //Padding(padding:EdgeInsets.only(top:10)),
                                    Icon(Icons.chat,color: Colors.teal,),
                                    Icon(Icons.call,color: Colors.teal,),
                                    Icon(Icons.videocam,color: Colors.teal,),
                                    Icon(Icons.error_outline,color: Colors.teal,),
                                  ],
                                ),
                              ],
                            ),
                          )

                      ),
                    );
  }

  Widget _buildSpacer() {
    return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 100, right: 20),
                  //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Colors.grey[300],
                          ))));
  }

  Widget _buildContentDetail(BuildContext context, int index) {
    return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top:8.0,left:8,right:8),
                    child: ListTile(
                        onTap: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                ContentChat(image:contentDetails[index].url ,name: contentDetails[index].name,lastSeen: contentDetails[index].time,)));
                          });
                        },

                        title:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(contentDetails[index].name, style: TextStyle(fontWeight: FontWeight.w600,),),
                                SizedBox(height: 5,),
                                Container(
                                    width: 200,
                                    child: Text(contentDetails[index].message, overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.grey,fontSize: 15),)),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text( contentDetails[index].time , style: TextStyle(fontSize: 10,
                                    color: contentDetails[index].messageCount > 0 ? Color(0xFF25D366) : Colors.grey),),

                                contentDetails[index].messageCount  > 0
                                    ? Container(
                                  width:25,
                                  height:25,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color(0xFF25D366),
                                  ),
                                  child: Text(
                                    '${contentDetails[index].messageCount }',
                                    style: TextStyle(color: Colors.white,fontSize: 13),
                                  ),
                                  padding: EdgeInsets.only(top: 5),
                                  alignment: Alignment.topCenter,
                                )
                                    : Text(''),

                              ],
                            )
                          ],)
                      /*Text(contentDetails[index].name, style: TextStyle(fontWeight: FontWeight.w600),),
                    subtitle: Text(contentDetails[index].message, overflow: TextOverflow.ellipsis,),
                    trailing: Text(contentDetails[index].time.length > 0 ? contentDetails[index].time : '', style: TextStyle(fontSize: 12, color: Colors.grey[700])),*/),
                  ),
                );
  }
}
