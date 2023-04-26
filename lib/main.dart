//import 'package:audioplayer/Screens/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marimba/Screens/Dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  print('Deus');
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    ),
  );
}
