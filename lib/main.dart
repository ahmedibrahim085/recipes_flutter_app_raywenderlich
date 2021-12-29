import 'package:flutter/material.dart';
import 'package:recipes/my_home_page.dart';

var _appTitle = 'Recipe Calculator';
void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // 1 A widget’s build() method is the entry point for composing together other widgets to make a new widget.
  @override
  Widget build(BuildContext context) {
    // 2 A theme determines visual aspects like color. The default ThemeData
    // will show the standard Material defaults.
    final ThemeData theme = ThemeData();
    // 3
    return MaterialApp(
      // 4 The title of the app is a description that the device uses to
      // identify the app. The UI won’t display this.
      title: _appTitle,
      // 5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      // 6
      home: MyHomePage(title: _appTitle),
    );
  }
}
