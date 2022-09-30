import 'package:flutter/material.dart';
// import 'package:todoapp/constants/colors.dart';
class Home extends StatelessWidget{
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
         [Icon
          (Icons.menu,
          color: Colors.white,
          size: 30,),
          Container(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assests/images/logo.png'),
            ),
          )
        ]),
        ),
        body:Container(
        child: Text('This is a todo app'),
      )
    );
  }

}