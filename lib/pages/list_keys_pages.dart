import 'package:flutter/material.dart';

class ListKeysPage extends StatefulWidget {
  const ListKeysPage({super.key});

  @override
  State<ListKeysPage> createState() => _ListKeysPageState();
}

class _ListKeysPageState extends State<ListKeysPage> {
  int _counter = 0;
  bool showWidget = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Switch(
            value: showWidget,
            onChanged: (change) {
              setState(() {
                showWidget = change;
              });
            },
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          if (showWidget)
            const TextField(
              key: Key('Email'),
              decoration: InputDecoration(label: Text('Email')),
            ),
          const TextField(
            decoration: InputDecoration(label: Text('Passwordd')),
          ),
        ],
      ),
    );
  }
}
