import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio List Tile',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 74),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<String> _options = [
  'Option 1',
  'Option 2',
  'Option 3',
];

class _MyHomePageState extends State<MyHomePage> {
  String _currentOption = _options[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio List Tile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < _options.length; i++)
              RadioListTile(
                groupValue: _currentOption,
                onChanged: (value) {
                  setState(() {
                    _currentOption = value!;
                  });
                },
                value: _options[i],
                title: Text(_options[i]),
              ),
          ],
        ),
      ),
    );
  }
}
