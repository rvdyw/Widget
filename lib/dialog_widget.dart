import 'package:flutter/material.dart';

class DialogMyWidget extends StatelessWidget {
  DialogMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( // Center the button in the screen
        child: ElevatedButton(
          onPressed: () async {
            await showDialog<void>(
              context: context,
              barrierDismissible: true,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Info'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: const [
                        Text('Your order was placed!'),
                      ],
                    ),
                  ),
                  actions: [ // Corrected placement of actions
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Ok"),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text("Show Dialog"), // Added text to the button
        ),
      ),
    );
  }
}
