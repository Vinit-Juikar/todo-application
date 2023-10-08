import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/utils/create_new_task.dart';
import 'package:todo_app/utils/todo_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List toDoTasks = [
    ['Bring Chocolates', false],
    ['Bring Assignment Papers', false],
    ['Complete Assignments', false],
  ];

// adding a function for the checkbox

  void selectCheckBox(bool? value, int index) {
    setState(() {
      toDoTasks[index][1] = !toDoTasks[index][1];
    });
  }

void createANewTask(){
   showDialog(context: context, builder: (context){
    return DialogBox();
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        toolbarHeight: 80,
        // backgroundColor: Colors.yellow,
        title: Center(
          child: Text('Todo List',
              style: GoogleFonts.akayaKanadaka(
                fontSize: 35,
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.amber,
        child: Icon(Icons.add),
        onPressed: () {
          createANewTask();
        },
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      //main body of the to do list
      body: ListView.builder(
        itemCount: toDoTasks.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoTasks[index][0],
            taskCompleted: toDoTasks[index][1],
            onChanged: ((value) {
              selectCheckBox(value, index);
            }),
          );
        },
      ),
    );
  }
}
