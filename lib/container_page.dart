import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Stylish Chair',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Rp.350.000',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF9A9300),
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}