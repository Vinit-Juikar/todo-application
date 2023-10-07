import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/utils/todo_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List toDoTasks = [
  ['Bring Chocolates',false],
  ['Bring Assignment Papers',false],
  ['Complete Assignments',false],
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],

      appBar: AppBar(
        toolbarHeight: 80,
        // backgroundColor: Colors.yellow,
        title: Center(
          child: Text(
            'Todo List',
            style: GoogleFonts.akayaKanadaka(fontSize: 35,)  
          ),
        ),
      ),

      //main body of the to do list 
      body: ListView.builder(itemCount: toDoTasks.length,itemBuilder: (context,index){
        return ToDoTile(taskName: toDoTasks[index][0], taskCompleted: toDoTasks[index][1], onChanged: ((p0) {
          
        }));
      },)
    );
  }
}
