class ChatItemModel{

  final String senderId;
  final String message;

  ChatItemModel({this.senderId, this.message});

  static List<ChatItemModel> list=[
    ChatItemModel(message: 'Hi Zen! How are you today?',senderId: "1",),
    ChatItemModel(senderId: '2',message: 'It\'s an ugly day today.'),
    ChatItemModel(senderId: '1',message: 'I know. I think it may rain. '),
    ChatItemModel(senderId: '2',message: 'It\'s the middle of summer, it shouldn\'t rain today.'),
    ChatItemModel(senderId: '1',message: 'That would be weird.'),
    ChatItemModel(senderId: '2',message: 'Yeah, especially since it\'s ninety degrees outside.'),
    ChatItemModel(senderId: '1',message: ' I know, it would be horrible if it rained and it was hot outside.'),
    ChatItemModel(message: 'Yes, it would be.',senderId: "2",),
    ChatItemModel(message: ' I really wish it wasn\'t so hot every day.',senderId: "1",),
    ChatItemModel(message: 'Me too. I can\'t wait until winter.',senderId: "2",),
    ChatItemModel(message: 'I like winter too, but sometimes it gets too cold.',senderId: "1",),
    ChatItemModel(message: 'I\'d rather be cold than hot.',senderId: "2",),
    ChatItemModel(message: 'Me too.',senderId: "1",),

  ];


}