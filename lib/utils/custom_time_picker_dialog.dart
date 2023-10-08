import 'package:flutter/material.dart';

class CustomTimePickerDialog extends StatefulWidget {
  CustomTimePickerDialog({super.key});

  @override
  State<CustomTimePickerDialog> createState() => _CustomTimePickerDialogState();
}

class _CustomTimePickerDialogState extends State<CustomTimePickerDialog> {
  @override
  void initState() {
    initAmPmControllerFunction();
    super.initState();
  }
void initAmPmControllerFunction() {
  if (currentTime.hour >= 12) {
    amPmController = 'PM';
  } else {
    amPmController= 'AM';
  }
}

void toggleAmPmController() {
  if (amPmController == 'PM') {
    setState(() {
      amPmController = 'AM';
    });
  } else {
    setState(() {
      amPmController= 'PM';
    });
  }
}

  // This is the current time
  final currentTime = DateTime.now();

  var amPmController;

  TextEditingController hourController = TextEditingController();

  TextEditingController minuteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int hourIn12HourFormat =
        currentTime.hour % 12; // Calculate hour in 12-hour format

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: const Text('Enter Time'),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 60,
                width: 75,
                decoration: BoxDecoration(color: Colors.yellow[100]),
                child: Center(
                  child: Text(
                    hourIn12HourFormat.toString(), // Use the calculated hour
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              const Text(
                ':',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                width: 25,
              ),
              Container(
                height: 60,
                width: 75,
                decoration: BoxDecoration(color: Colors.yellow[100]),
                child: Center(
                  child: Text(
                    currentTime.minute.toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Container(
                height: 40,
                width: 55,
                decoration: BoxDecoration(color: Colors.yellow[100]),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      toggleAmPmController();
                    },
                    child: Text(
                      amPmController.toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(height: 25,), // Added spacer to push buttons to the bottom

          //  SizedBox(height: 20,),
          Spacer(),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2, // Higher flex value for the "Create" button
                child: Container(
                  color: Colors.amber,
                  height: MediaQuery.of(context).size.height * 0.065,
                  child: Center(
                    child: Text('Create'),
                  ),
                ),
              ),
              Expanded(
                flex: 2, // Lower flex value for the "Cancel" button
                child: Container(
                  color: Colors.green,
                  height: MediaQuery.of(context).size.height * 0.065,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Text('Cancel'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
