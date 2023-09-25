import 'package:flutter/material.dart';

import 'MyHomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Palacy',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(99, 54, 1, 65)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Pet Palacy'),
    );
  }
}
