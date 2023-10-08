import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
     child:   Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor
      ),
        height: MediaQuery.of(context).size.height*0.3,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),

            Text("Create new task",style: GoogleFonts.akayaKanadaka(fontSize: 20),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: "New Task"),
              ),
            ),
            const SizedBox(height: 20,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: "New Task"),
              ),
            ),
            const SizedBox(height: 20,),
            
          ],
        ),
      ),
    );
  }
}