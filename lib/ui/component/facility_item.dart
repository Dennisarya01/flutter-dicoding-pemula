import 'package:fasteairplane/shared/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String text;

  const FacilityItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/check-icon.png'),
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(color: kBlackColor, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
