import 'package:flutter/material.dart';

class DatepickerWidget extends StatelessWidget {
  DatepickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: InkWell(
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            debugPrint("pickedDate : $pickedDate");
          },
          child: TextFormField(
            initialValue: '2022-08-01',
            maxLength: 20,
            enabled: false,
            decoration: const InputDecoration(
              labelText: 'Birth Date',
              labelStyle: TextStyle(
                color: Colors.blueGrey,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueGrey,
                ),
              ),
              suffixIcon: Icon(Icons.date_range),
              helperText: "What's your birth date",
            ),
            onChanged: (value) {},
          ),
        ),
      ),
    );
  }
}
