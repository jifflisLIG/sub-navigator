import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(child: Text("Welcome to second screen!"))),
    );
  }
}
