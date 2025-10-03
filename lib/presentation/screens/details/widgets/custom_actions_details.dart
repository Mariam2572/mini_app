import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomActionsDetails extends StatelessWidget {
  final String titel;
  final String iconPath;
  const CustomActionsDetails({super.key, required this.titel, required this.iconPath});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        // spacing: 7,
        children: [
          SvgPicture.asset(iconPath, width: 16, height: 16),
          SizedBox(width: 7),
          Text(
            titel,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}