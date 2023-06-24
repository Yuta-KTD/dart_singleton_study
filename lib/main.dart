import 'package:flutter/material.dart';
import 'package:singleton_and_factory/pages/home.dart';
import 'package:singleton_and_factory/pages/second.dart';

void main() => runApp(
      MaterialApp(
        home: const HomePage(),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => const HomePage(),
          '/second': (BuildContext context) => const SecondPage(),
        },
      ),
    );
