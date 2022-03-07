class NotificationModel {
  String? image;
  String? title;
  String? description;
  String? time;
  bool? isRead;

  NotificationModel(
      this.image, this.title, this.description, this.time, this.isRead);
}

var data = dataNotification
    .map((e) => NotificationModel(e['image'].toString(), e['title'].toString(),
        e['description'].toString(), e['time'].toString(), e['isRead'] as bool))
    .toList();

var dataNotification = [
  {
    'image': 'assets/images/img-1.png',
    'title': 'You have a new coffee invitation',
    'description': 'from Victor McComrick!',
    'time': '18:28',
    'isRead': false,
  },
  {
    'image': 'assets/images/img-2.png',
    'title': 'Zhang Zilin has accepted your ',
    'description': 'coffee invitation!',
    'time': '18:28',
    'isRead': false,
  },
  {
    'image': 'assets/images/img-3.png',
    'title': 'Zhang Zilin has returned your',
    'description': 'coffee invitation!',
    'time': '18:28',
    'isRead': true,
  },
  {
    'image': 'assets/images/img-4.png',
    'title': 'You have a new coffee invitation',
    'description': 'from Victor McComrick!',
    'time': '28/01/20',
    'isRead': true,
  },
  {
    'image': 'assets/images/img-1.png',
    'title': 'You have a new coffee invitation',
    'description': 'from Victor McComrick!',
    'time': '28/01/20',
    'isRead': false,
  },
  {
    'image': 'assets/images/img-2.png',
    'title': 'Zhang Zilin has accepted your ',
    'description': 'coffee invitation!',
    'time': '28/01/20',
    'isRead': false,
  },
  {
    'image': 'assets/images/img-3.png',
    'title': 'Zhang Zilin has returned your',
    'description': 'coffee invitation!',
    'time': '28/01/20',
    'isRead': true,
  },
  {
    'image': 'assets/images/img-4.png',
    'title': 'You have a new coffee invitation',
    'description': 'from Victor McComrick!',
    'time': '28/01/20',
    'isRead': true,
  },
];
