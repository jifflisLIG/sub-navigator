import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:push_subnavigation/routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width,
        child: FlatButton(
          onPressed: (){
            Routes.pushNamed(Routes.SCREEN_POP,navigator: Routes.homeNavigator);
          },
          child: const Text('Home Click here!'),
        ),
      ),
    );
  }
}
