import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:teste_navbar/ButtonCustom.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor:
            Color(0xFFFAFAFA), // aqui você pode definir a cor de fundo
        body: ListagemAnimais(),
      ),
    );
  }
}

class ListagemAnimais extends StatefulWidget {
  @override
  _ListagemAnimaisState createState() => _ListagemAnimaisState();
}

class _ListagemAnimaisState extends State<ListagemAnimais> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Color(0xFFF0F0F0),
      ),
      margin: EdgeInsets.all(32),
      height: 100,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 64,
                height: 64,
                child: const CircleAvatar(
                  backgroundImage:
                      AssetImage('../assets/images/Icon_cowprod.png'),
                  backgroundColor: Color(0xFFFCFCFC),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        'Ben',
                        style: TextStyle(
                          fontFamily: 'Axiforma',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0C1E10),
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        '#38724951',
                        style: TextStyle(
                          fontFamily: 'Axiforma',
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF0C1E10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1E90FF).withOpacity(0.3),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  alignment: Alignment.center,
                  child: const Text(
                    'calmo',
                    style: TextStyle(
                      fontFamily: 'Axiforma',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E90FF),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      SvgPicture.asset('../assets/heart.svg',
                          height: 22, width: 22),
                      SizedBox(width: 10), // espaço entre o ícone e o texto
                      Text(
                        '48 BPM',
                        style: TextStyle(
                          fontFamily: 'Axiforma',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0C1E10),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
} 


/* Modal ---------------------------------------------------------
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
                color: const Color(0xFFFAFAFA),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
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
                        padding: const EdgeInsets.all(15),
                        child: SvgPicture.asset('../assets/Conectar.svg',
                            height: 120, width: 120),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          spacing:
                              8.0, // Espaçamento horizontal entre os filhos
                          runSpacing:
                              4.0, // Espaçamento vertical entre as linhas
                          children: [
                            const Text(
                              textAlign: TextAlign.center,
                              'Aproxime o celular da tag para cadastrar o dispositivo.',
                              style: TextStyle(
                                fontFamily: 'Axiforma',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF0C1E10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ButtonCustom(
                        onPressed: () {},
                        text: "Cancelar",
                        size: 'sm',
                        borderColor: const Color(0xFF00DA30),
                        outline: true,
                        textColor: const Color(0xFF00DA30),
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
*/

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