import 'package:flutter/material.dart';
class LikeIcon extends StatelessWidget {
  IconData ? icon ;
    String ?text;
    Color ?iconColor;
  LikeIcon({super.key,this.icon,this.text, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
      Icon(icon,color: iconColor,),
          const SizedBox(
            width: 8,
          ),
          Text(text==null?"":text.toString()),
        ],
      ),
    );
  }
}
