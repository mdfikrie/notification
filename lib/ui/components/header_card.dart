import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {
  final String title;
  HeaderCard(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${this.title}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              color: Colors.yellow,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
