import 'package:flutter/material.dart';

class ListViewMyWidget extends StatelessWidget {
  ListViewMyWidget({super.key});

  final List<String> categories = ["Category 1", "Category 2", "Category 3"]; // Example categories list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            categories.length,
            (index) {
              return GestureDetector(
                onTap: () {
                  // Handle tap event
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 24,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  child: Text(
                    categories[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
