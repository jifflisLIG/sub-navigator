import 'package:flutter/material.dart';
import 'package:push_subnavigation/routes.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int navIndex=0;

  final List<Widget> _navigationScreens = <Widget>[
    SubNavigator(
        navigatorKey: Routes.homeNavigatorKey,
        initialRoute: Routes.SCREEN_HOME),
    SubNavigator(
      navigatorKey: Routes.secondScreenNavigatorKey,
      initialRoute: Routes.SCREEN_SECOND,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navigationScreens[navIndex],
      bottomNavigationBar: _buildBottomNavigation(context),
    );
  }

  /// Build bottom navigation widget.
  ///
  ///
  Widget _buildBottomNavigation(BuildContext context) => BottomNavigationBar(
        backgroundColor: Colors.black12,
        elevation: 0,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        currentIndex: navIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            navIndex = index;
          });
        },
        items: _bottomNavigationItems(),
      );

  /// Bottom navigation items.
  ///
  ///
  List<BottomNavigationBarItem> _bottomNavigationItems() =>
      <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Icon(
              Icons.home,
              size: 19,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Icon(
              Icons.settings,
              size: 19,
            ),
          ),
          label: 'Settings',
        ),
      ];
}
