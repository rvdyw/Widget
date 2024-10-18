import 'package:flutter/material.dart';

class DropdownMyWidget extends StatefulWidget {
  const DropdownMyWidget({super.key});

  @override
  _DropdownMyWidgetState createState() => _DropdownMyWidgetState();
}

class _DropdownMyWidgetState extends State<DropdownMyWidget> {
  // Initial selected value
  String selected = 'Python'; // Ensure there's a default value

  // List of items for the dropdown
  final List<String> dropdownList = ['Python', 'Java', 'Dart', 'JavaScript'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Your Favorite Language:'),
            const SizedBox(width: 8),
            DropdownButton<String>(
              value: selected, // The current selected value
              icon: const Icon(Icons.arrow_downward),
              iconSize: 20,
              style: TextStyle(color: Colors.blue[600]),
              underline: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 3,
                    ),
                  ),
                ),
              ),
              items: dropdownList
                  .map((String e) => DropdownMenuItem<String>(
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
              onChanged: (String? val) {
                if (val != null) {
                  setState(() {
                    selected = val; // Update the selected value
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}