import 'package:flutter/material.dart';


class ContentDetails {
  final String name;
  final String message;
  final String url;
  final String time;
  final String statusTime;
  final int messageCount ;

  ContentDetails({this.name, this.message,this.time, this.url,this.statusTime,this.messageCount});


}
List<ContentDetails> status=[
  ContentDetails(name:'Well Smith',time:'',url: 'assets/str1.png',statusTime: 'Just now'),
  ContentDetails(name:'CATREN ',time:'',url:'',statusTime: '5 minutes ago'),
  ContentDetails(name:'Mina Roz',time:'',url: '',statusTime: '12 minutes ago'),
  ContentDetails(name:'Aria Majidi',time:'',url: 'assets/str_aria_majidi.png',statusTime: '30 minutes ago'),
  ContentDetails(name:'Niloo Far ',time:'',url: 'assets/Niloofar.png',statusTime: '35 minutes ago'),
  ContentDetails(name:'Josef ',time:'',url: 'assets/str1.png',statusTime: '36 minutes ago'),
  ContentDetails(name:'Sandra Lawman',time:'',url: 'assets/str3.png',statusTime: '40 minutes ago'),
  ContentDetails(name:'Helen Miles',time:'',url: 'assets/str_helen_miles.png',statusTime: '48 minutes ago'),
  ContentDetails(name:'Lorant Fego',time:'',url: 'assets/str_someone.png',statusTime: 'Today,22:12'),

  ContentDetails(name:'John Legend',time:'',url: 'assets/john_legend.png',statusTime: 'Today,21:5'),

];


List<ContentDetails> contentDetails=[
  ContentDetails(name:'Well Smith',message: 'How are You?',time:'20:00',url: 'assets/str1.png',messageCount: 1),
  ContentDetails(name:'Mina Roz', message:'call me',time:'17:05',url: '',messageCount: 0),
  ContentDetails(name:'Sandra Lawman', message:'You have always been there ',time:'11:30',url: 'assets/str3.png',messageCount: 3),
  ContentDetails(name:'Niloo Far ', message:'for blessing me with such a true friend like you!',time:'03:00',url: 'assets/Niloofar.png',messageCount: 2),
  ContentDetails(name:'Josef ',message: 'Thank you for being around when I was going through hard times, my best friend forever.',time:'02:10',url: 'assets/str1.png',messageCount: 0),
  ContentDetails(name:'John Legend',message: 'I don’t want thousands of friends on Facebook, nor do I want thousands of followers on Twitter. '
      'I just want a real friend like you. Thanks for being present in my life, all the time, all the way.',time:'02:05',url: 'assets/john_legend.png',messageCount: 0),
  ContentDetails(name:'Helen Miles',message: 'Many people can leave their ',time:'01:00',url: 'assets/str_helen_miles.png',messageCount: 0),
  ContentDetails(name:'Aria Majidi',message: 'How are You?',time:'1/5/2020',url: 'assets/str_aria_majidi.png',messageCount: 0),
  ContentDetails(name:'Lorant Fego',message: 'I won’t promise ',time:'1/3/2020',url: 'assets/str_someone.png',messageCount: 1),
  ContentDetails(name:'CATREN ', message:'You know every trick to make me smile ',time:'1/3/2020',url:'',messageCount: 0),

];