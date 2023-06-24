import 'package:flutter/material.dart';
import 'package:singleton_and_factory/item_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Singleton Study'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              // keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: 'ユーザー名',
                icon: Icon(Icons.account_box),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ItemStore().set('name', _controller.value.text);
                Navigator.of(context).pushNamed('/second');
              },
              child: const Text('Next'),
            )
          ],
        ),
      ),
    );
  }
}
