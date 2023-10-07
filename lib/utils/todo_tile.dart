import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoTile extends StatelessWidget {
//adding the tile name
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: MediaQuery.of(context).size.height*0.1,
        // color: Colors.yellow[400],
        child: Row(
          children: [
           Spacer(),
    //Tile name
            Text(taskName,style: GoogleFonts.cabinSketch(fontSize: 20),),
    //Checkbox
    
            Spacer(),
            Checkbox(value: taskCompleted, onChanged: onChanged),
            SizedBox(width: 20,)
          ],
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 154, 139, 6),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
      ),
    );
  }
}
