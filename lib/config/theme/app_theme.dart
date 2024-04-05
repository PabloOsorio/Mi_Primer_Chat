import 'package:flutter/material.dart';

const Color customColor = Color.fromARGB(199, 192, 12, 228);

const List<Color> colorThemes = [
  customColor,
  Colors.orange,
  Colors.redAccent,
  Colors.purpleAccent,
  Colors.white24,
  Colors.teal,
  Colors.black,

];



class appTheme {

final int selectedColor;

appTheme({
  this.selectedColor=0
  
});

  ThemeData xx()=> ThemeData(colorSchemeSeed: colorThemes[selectedColor], useMaterial3: false, 
  );
}