import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teste_navbar/ButtonCustom.dart';

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
      home: ModalSheet(),
    );
  }
}

class ModalSheet extends StatefulWidget {
  @override
  _ModalSheetState createState() => _ModalSheetState();
}

class _ModalSheetState extends State<ModalSheet> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show Modal'),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 600,
                color: Color(0xFFFAFAFA),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Text(
                          'Pronto para escanear',
                          style: TextStyle(
                            fontFamily: 'Axiforma',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0C1E10),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: SvgPicture.asset('../assets/Conectar.svg',
                            height: 120, width: 120),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Text(
                          'Aproxime o celular da tag para cadastrar o dispositivo.',
                          style: TextStyle(
                            fontFamily: 'Axiforma',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF0C1E10),
                          ),
                        ),
                      ),
                      ButtonCustom(
                        onPressed: () {},
                        text: "Cancelar",
                        size: 'sm',
                        borderColor: Color(0xFF00DA30),
                        outline: true,
                        textColor: Color(0xFF00DA30),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

/* Navbar ---------------------------------------------------------
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
*/