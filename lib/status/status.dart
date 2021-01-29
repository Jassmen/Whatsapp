//import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/components/floating_action_button.dart';
import 'package:whatsapp/status/stories.dart';

import '../model/content_detail.dart';



class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Expanded(
              child: Container(
                //height: MediaQuery.of(context).size.height/1.5,
                child: ListView.builder(
                  itemBuilder: (context,int index){
                    return Column(
                      children: <Widget>[
                        index == 0? _buildMyStatus() : Container(
                    height:60,
                        child:ListTile(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>StoryPage()));
                          },
                          leading: CircleAvatar(backgroundImage: AssetImage(status[index].url.length > 0 ?status[index].url :'assets/default.png'),radius: 20,),
                          title: Text(status[index].name,style: TextStyle(fontWeight: FontWeight.w600),),
                          subtitle: Text(status[index].statusTime,overflow: TextOverflow.ellipsis,),
                          trailing: Text(status[index].time.length > 0 ? status[index].time :'',style:TextStyle(fontSize: 12,color: Colors.grey[700])),
                        ),),
                        index == 0? SizedBox() :Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 100,right: 20),
                            padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(width: 1,color: Colors.grey[300],)
                                )
                            )),
                      ],
                    );
                  },
                  itemCount: contentDetails.length,
                  shrinkWrap: true,
                ),
              ),
            ),





          ],
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color:Color(0xFF4AC959)
            ),
            child: Icon(Icons.camera_alt,color: Colors.white,),
          ),
        )



      ],
    );
  }
  Widget _buildMyStatus(){
    return Column(
      children: <Widget>[
        Card(
          color: Colors.white,
          elevation: 0.0,
          child:ListTile(
            onTap: (){},
            leading: CircleAvatar(backgroundImage: AssetImage('assets/ass.jpg'),radius: 25,),
            title: Text('My Status',style: TextStyle(fontWeight: FontWeight.w600),),
            subtitle: Text('Tap to add status update '),
            trailing: Icon(Icons.more_horiz),
          ),
        ),
        Container(
            width: double.infinity,
            height: 30,
          padding: EdgeInsets.only(left:5),
          alignment: Alignment.centerLeft,
          color: Colors.grey.withOpacity(.3),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
             Text(
              "Viewed updates",
                style: TextStyle(color: Colors.grey.withOpacity(.9), fontWeight: FontWeight.bold),
                    ),
              Icon(Icons.keyboard_arrow_down,color: Colors.teal,),

            ],
          ))
      ],
    );
  }
}
