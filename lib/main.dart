import 'package:flutter/material.dart';

import 'package:widget_adit/aspectratio_widget.dart';
import 'package:widget_adit/appbar_widget.dart';
import 'package:widget_adit/bottomnavigation_bar.dart';
import 'package:widget_adit/bottomsheet_widget.dart';
import 'package:widget_adit/button_widget.dart';
import 'package:widget_adit/container_page.dart';
import 'package:widget_adit/container_widget.dart';
import 'package:widget_adit/center.dart';
import 'package:widget_adit/checkbox_widget.dart';
import 'package:widget_adit/circleavatar_widget.dart';
import 'package:widget_adit/column_widget.dart';
import 'package:widget_adit/drawer_widget.dart';
import 'package:widget_adit/dropdownmywidget.dart';
import 'package:widget_adit/datepicker_widget.dart';
import 'package:widget_adit/dialog_widget.dart';
import 'package:widget_adit/expanded_widget.dart';
import 'package:widget_adit/gridbuilder_widget.dart';
import 'package:widget_adit/icon_widget.dart';
import 'package:widget_adit/image_widget.dart';
import 'package:widget_adit/listview_builder.dart';
import 'package:widget_adit/listview_widget.dart';
import 'package:widget_adit/navigationpush_widget.dart';
import 'package:widget_adit/navigationpop_widget.dart';
import 'package:widget_adit/padding.dart';
import 'package:widget_adit/radiobutton.dart';
import 'package:widget_adit/row.dart';
import 'package:widget_adit/stack.dart';
import 'package:widget_adit/sized_box.dart';
import 'package:widget_adit/switch.dart';
import 'package:widget_adit/snackbar_widget.dart';
import 'package:widget_adit/silverappbar_widget.dart';
import 'package:widget_adit/tabbar_widget.dart';
import 'package:widget_adit/textview.dart';
import 'package:widget_adit/text_widget.dart';
import 'package:widget_adit/textfield_widget.dart';
import 'package:widget_adit/wrapsigma.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Wrapsigma(),
    );
  }
}
