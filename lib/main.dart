import 'package:flutter/material.dart';
import 'screens/Screens.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Title = 'TTS Service';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: Title,
      theme: ThemeData(
        colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: Colors.orangeAccent,
            onPrimary: Colors.redAccent,
            secondary: Colors.redAccent,
            onSecondary: Colors.redAccent,
            error: Colors.redAccent,
            onError: Colors.redAccent,
            background: Colors.redAccent,
            onBackground: Colors.redAccent,
            surface: Colors.redAccent,
            onSurface: Colors.redAccent),
      ),
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              ScreenTextToSpeach(),
            ],
          ),
        ),
      ),
    );
  }
}
