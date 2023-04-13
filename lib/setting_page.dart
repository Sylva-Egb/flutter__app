import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
const SettingsScreen({Key? key}) : super(key: key);

@override
_SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
int _selectedColorIndex = 0;

final List<Color> _appBarColors = [
Colors.blue,
Colors.green,
Colors.red,
Colors.yellow,
Colors.purple,
];

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Settings'),
backgroundColor: _appBarColors[_selectedColorIndex],
),
body: Center(
child: DropdownButton(
value: _selectedColorIndex,
onChanged: (value) {
setState(() {
_selectedColorIndex = value as int;
});
},
items: [
DropdownMenuItem(
value: 0,
child: Text('Blue'),
),
DropdownMenuItem(
value: 1,
child: Text('Green'),
),
DropdownMenuItem(
value: 2,
child: Text('Red'),
),
DropdownMenuItem(
value: 3,
child: Text('Yellow'),
),
DropdownMenuItem(
value: 4,
child: Text('Purple'),
),
],
),
),
);
}
}