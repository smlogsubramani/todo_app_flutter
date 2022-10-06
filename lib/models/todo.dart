import 'package:flutter/cupertino.dart';

class ToDo{
  String? id;
  String? todoText;
  bool isDone;



  ToDo({
  required this.id,
  required this.todoText,
  this.isDone = false,

});

static List<ToDo>  todoList(){
  return[
    ToDo(id: '01', todoText: 'morning excersise', isDone: true),
    ToDo(id: '01', todoText: 'workout', isDone: true),
    ToDo(id: '01', todoText: 'breakfast',),
    ToDo(id: '01', todoText: ' lunch', ),
    ToDo(id: '01', todoText: ' codeing', ),
    ToDo(id: '01', todoText: ' dinner', ),
  ];
}
}