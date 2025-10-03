import 'package:flutter/material.dart';

class Types extends StatelessWidget {
  const Types({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(left: 45, top: 40),
      child: Row(
        children: [
          ...List.generate(3, (index) {
            List<String> categories = [
              'Dark Fantasy',
              'Action',
              'Adventure',
            ];
            return Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: index < 2 ? 8 : 0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff00000040).withOpacity(0.2),
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          }),
        ],
      ),
    )
            ;
  }
}