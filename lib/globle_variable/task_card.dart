import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  final String tittle;

 const TaskCard({Key? key,required this.tittle}) : super(key: key);

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool isDone=false;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.tittle),

      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title:  Text(widget.tittle),
        trailing: Icon(
            isDone ? Icons.check_box : Icons.check_box_outline_blank),
        onTap: (){
          setState(() {
          isDone = !isDone;
          });
        },
      ),
    );
  }
}
