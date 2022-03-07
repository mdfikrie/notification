import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inbox_notification/ui/components/header_card.dart';
import 'package:inbox_notification/ui/components/list_notification.dart';

class CardStack extends StatefulWidget {
  const CardStack({Key? key}) : super(key: key);

  @override
  State<CardStack> createState() => _CardStackState();
}

class _CardStackState extends State<CardStack> {
  @override
  Widget build(BuildContext context) {
    var heightAnnouncement = 528.0.obs;
    var heightCareer = 88.0.obs;
    var heightVerification = 44.0.obs;
    return Obx(
      () => Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AnimatedContainer(
            height: heightAnnouncement.value,
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFF232336),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
            ),
            duration: Duration(milliseconds: 300),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print('Hallo');
                    heightVerification.value = 44.0;
                    heightCareer.value = 88.0;
                    if (heightAnnouncement.value == 132.0) {
                      heightAnnouncement.value = 528.0;
                    } else {
                      heightAnnouncement.value = 132.0;
                    }
                    print(heightAnnouncement);
                  },
                  child: HeaderCard('ANNOUNCEMENTS (134)'),
                ),
                ListNotification(),
              ],
            ),
          ),
          AnimatedContainer(
            height: heightCareer.value,
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFF232336),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
            ),
            duration: Duration(milliseconds: 300),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print('Hallo');
                    heightAnnouncement.value = 132.0;
                    heightVerification.value = 44.0;
                    if (heightCareer.value == 88.0) {
                      heightCareer.value = 528.0;
                    } else {
                      heightCareer.value = 88.0;
                    }
                    print(heightCareer);
                  },
                  child: HeaderCard('CAREER-INVITES (13)'),
                ),
                ListNotification(),
              ],
            ),
          ),
          AnimatedContainer(
            height: heightVerification.value,
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFF232336),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
            ),
            duration: Duration(milliseconds: 300),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print('Hallo');
                    heightAnnouncement.value = 132.0;
                    heightCareer.value = 88.0;
                    if (heightVerification.value == 44.0) {
                      heightVerification.value = 528.0;
                    } else {
                      heightVerification.value = 44.0;
                    }
                  },
                  child: HeaderCard('VERIFICATION (8)'),
                ),
                ListNotification(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
