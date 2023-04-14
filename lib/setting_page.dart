import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  Color selectedColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: selectedColor,
        title: const Text('Page parameters'),
      ),
      body: Center(
        child: ColorDropdownButton(
          selectedColor: selectedColor,
          onColorChanged: (Color value) {
            setState(() {
              selectedColor = value;
            });
          },
        ),
      ),
    );
  }
}

class ColorDropdownButton extends StatelessWidget {
  const ColorDropdownButton({
    required this.selectedColor,
    required this.onColorChanged,
    Key? key,
  }) : super(key: key);

  final Color selectedColor;
  final ValueChanged<Color> onColorChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Color>(
      items: const [
        DropdownMenuItem(
          value: Colors.red,
          child: Text('Red'),
        ),
        DropdownMenuItem(
          value: Colors.blue,
          child: Text('Blue'),
        ),
        DropdownMenuItem(
          value: Colors.green,
          child: Text('Green'),
        ),
        DropdownMenuItem(
          value: Colors.yellow,
          child: Text('Yellow'),
        ),
        DropdownMenuItem(
          value: Colors.purple,
          child: Text('Purple'),
        ),
      ],
      value: selectedColor,
      onChanged: (value) => onColorChanged(value!),
    );
  }
}