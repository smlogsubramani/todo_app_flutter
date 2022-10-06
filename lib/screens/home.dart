// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoapp/widgets/todo_items.dart';
// import 'package:todoapp/constants/colors.dart';
import '../models/todo.dart';

class Home extends StatelessWidget{
  
  final todosList = ToDo.todoList();
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 234, 234),
      appBar: _buildAppBar(),
        body:Stack(
          children: [
            Container(
               padding: EdgeInsets.fromLTRB(18, 15, 18, 0),
               
            child: Column(
              children: [
                  searchBox(),
                   Expanded(
                     child: ListView(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          margin: EdgeInsets.only(top: 30,bottom: 20,),
                          child: Text('All ToDos',
                          style :TextStyle(
                          fontSize: 30,

                          fontWeight: FontWeight.w500,
                          ),
                           ),
                        ),
                        for (ToDo  todo in todosList)
                       ToDoItem(todo: todo,),
                  
                      ],
                           
                     ),
                   )
                 
              ],
            ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Row(children: [
          Expanded(child: Container(margin: EdgeInsets.only(bottom: 20,right: 20,left: 20,),
          // decoration: BoxDecoration(
          //   color: Colors.white,
           
          // ),
          ),
          ),
        ]),
      ),
          ],
        )
    );
  }

  Widget searchBox(){
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
              color:  Color.fromARGB(255, 255, 255, 255),
              borderRadius:BorderRadius.circular(50),
               
              ),

              child:TextField(
                decoration:InputDecoration(
                  contentPadding: EdgeInsets.all(0), 
                  prefixIcon: Icon(Icons.search,
                  color: Colors.black,
                  size: 20),
                  prefixIconConstraints: BoxConstraints(
                    maxHeight: 20,
                    maxWidth: 25,
                  ),
                  border: InputBorder.none,
                  hintText: 'search',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 189, 189, 189),)
                ),
              ),
            
            );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
       [Icon
        (Icons.menu,
        color: Colors.white,
        size: 30),
        // ignore: sized_box_for_whitespace
        Container(
          height: 50,
          width: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset('assests/images/logo.png'),
          ),
        )
      ]),
      );
  }

}