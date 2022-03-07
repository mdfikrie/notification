import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/notification_model.dart';

class ListNotification extends StatelessWidget {
  const ListNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      shrinkWrap: true,
      itemCount: dataNotification.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          height: 61,
          decoration: BoxDecoration(
            color: data[index].isRead == true
                ? Colors.transparent
                : Color(0xfff524CFF),
            borderRadius: BorderRadius.circular(15),
          ),
          margin: EdgeInsets.symmetric(vertical: 5),
          padding: EdgeInsets.symmetric(horizontal: 15),
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('${data[index].image}')),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(23),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Get.width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${data[index].title}',
                            style: TextStyle(
                              fontSize: 13,
                              color: data[index].isRead == true
                                  ? Colors.grey.shade600
                                  : Colors.grey.shade300,
                            ),
                          ),
                          Text(
                            '${data[index].description}',
                            style: TextStyle(
                              fontSize: 13,
                              color: data[index].isRead == true
                                  ? Colors.grey.shade600
                                  : Colors.grey.shade300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '${data[index].time}',
                      style: TextStyle(
                        fontSize: 13,
                        color: data[index].isRead == true
                            ? Colors.grey.shade600
                            : Colors.grey.shade300,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ));
  }
}
