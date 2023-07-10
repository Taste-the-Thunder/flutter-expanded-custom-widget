import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                width: double.infinity,
                color: Colors.red,
                child: Center(
                  child: Text(
                      '8',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white
                      ),
                  ),
                ),
              ),
            ),
            _customContainer(),
          ],
        ),
      ),
    );
  }
}

Widget _customContainer(){
  return Expanded(
    flex: 5,
    child: Container(
      width: double.infinity,
      color: Colors.indigo,
      child: Center(
        child: Text(
          '5',
          style: TextStyle(
              fontSize: 35,
              color: Colors.white
          ),
        ),
      ),
    ),
  );
}