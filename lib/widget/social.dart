import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Container socialWidget(IconData icon, String text, Color iconColor) {
  return Container(
    margin: const EdgeInsets.only(left: 30, right: 30, bottom: 5),
    height: 40,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          FaIcon(
            icon,
            color: iconColor,
          ),
          Container(margin: const EdgeInsets.only(left: 5), child: Text(text)),
        ],
      ),
    ),
  );
}
