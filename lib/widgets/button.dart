import 'package:flutter/material.dart';
class ProfileScreenButton extends StatelessWidget {
  String ? text;
   ProfileScreenButton({super.key, this.text});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.grey[300],
        child:  Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(text!,style: const TextStyle(
                color: Colors.black
            ),),
          ),
        ),
      ),
    );

  }
}
