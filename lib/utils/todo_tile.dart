// ignore_for_file: must_be_immutable

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
      padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 218, 148, 20),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        // color: Colors.yellow[400],
        child: Row(
          children: [
            const Spacer(),
            //Tile name
            Text(
              taskName,
              style: GoogleFonts.cabinSketch(fontSize: 20),
            ),
            //Checkbox

            const Spacer(),
            Checkbox(

              value: taskCompleted,
              onChanged: onChanged,
              checkColor: Colors.black,
              fillColor: const MaterialStatePropertyAll(Colors.yellow),
              shape: const ContinuousRectangleBorder(),
            ),

            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
