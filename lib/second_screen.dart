import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:push_subnavigation/routes.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings Screen"),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width,
        child: FlatButton(
          onPressed: (){
            Routes.pushNamed(Routes.SCREEN_POP,navigator: Routes.secondNavigator);
          },
          child: const Text('Settings Click here!'),
        ),
      ),
    );
  }
}
