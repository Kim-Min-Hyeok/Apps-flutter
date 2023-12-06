import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jackpot_web/firebase_options.dart';
import 'package:jackpot_web/my_app.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
