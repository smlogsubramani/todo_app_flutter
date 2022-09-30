import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Todo App')),
        body:Container(
        child: Text('this is home screen'),
      )
    );
  }

}