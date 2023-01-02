import 'package:flutter/material.dart';

class myColumn extends StatelessWidget {
  const myColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        color: Colors.black,
      ),
      child: Container(
        color:Colors.white,
        padding: EdgeInsets.symmetric(
          vertical: 55,
        ),
        
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text('HELLO'),
                const Text(
                  'WORLD',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 100,
                  color: Colors.pinkAccent,
                ),
                Container(
                  height: 100,
                  color: Colors.blueAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
