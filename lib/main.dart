import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _page = 2;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Luan Designer"), centerTitle: true),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 1,
        height: 60.0,
        items: [
          SvgPicture.asset('../assets/icon_map.svg', height: 26, width: 26),
          SvgPicture.asset('../assets/icon_home.svg', height: 26, width: 26),
          SvgPicture.asset('../assets/icon_notification.svg',
              height: 26, width: 26),
        ],
        color: Color(0xFF00DA30),
        buttonBackgroundColor: Color(0xFF00DA30),
        backgroundColor: Color(0xFFFAFAFA),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}
