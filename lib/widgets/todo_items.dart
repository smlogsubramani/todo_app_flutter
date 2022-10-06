// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../models/todo.dart';
class ToDoItem extends StatelessWidget{
  final ToDo todo;
   const ToDoItem ({Key? key, required this.todo}) : super(key: key);

   @override
   Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: ListTile(
      onTap: () {
        print('clicked on the todo bar');
      },
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
         todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
        color: Color.fromARGB(255, 69, 36, 252),
        size: 20,),
        title: Text(
          todo.todoText!,
          style: TextStyle(
          fontSize: 16,
          color: Color.fromARGB(255, 0, 0, 0),
          decoration: todo.isDone? TextDecoration.lineThrough : null,
           ),
           ),
           trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5)
            ),
            child: IconButton(
              color: Colors.white,
              iconSize: 18,
              icon: Icon(Icons.delete),
              onPressed: (){
                 print('clicked on the delete button');
              },
            ),
           ),
    ),
    );
   }
}
