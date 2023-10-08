import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/utils/custom_time_picker_dialog.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      
      child: Container(
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        height: MediaQuery.of(context).size.height * 0.38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 14,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Create new task",
                style: GoogleFonts.akayaKanadaka(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 0),
              child: Container(
                height: 70,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "New Task"),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              
              child: CustomTimePickerDialog()),
         
          ],
        ),
      ),
    );
  }
}
