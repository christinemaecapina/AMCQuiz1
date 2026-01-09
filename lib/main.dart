import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp( 
    // #1 MaterialApp: The root of the app that enables Material Design, routing, and global themes.
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold( 
    // #2 Scaffold: The skeleton of a page; it provides a place for the header, body, and navigation.
    appBar: AppBar( 
      // #3 AppBar: The top toolbar that identifies the screen and holds actions like "back" or "menu."
      title: const Text('All Widgets') 
      // #4 Text: The basic building block for displaying any readable string on the UI.
    ),
    body: Center( 
      // #7 Center: A simple layout tool that perfectly aligns its content to the middle of the screen.
      child: Container( 
        // #8 Container: A box that can be styled with color, borders, and margins—similar to a <div> in HTML.
        padding: const EdgeInsets.all(20),
        child: Column( 
          // #6 Column: A layout container that stacks its children one on top of the other vertically.
          children: [
            Row( 
              // #5 Row: A layout container that lines up its children side-by-side horizontally.
              children: [
                const Icon(Icons.star),
                const Text('Flutter'),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
