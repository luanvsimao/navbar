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
            const Color(0xFFFAFAFA), // aqui você pode definir a cor de fundo
        body: DadosdosAnimais(),
      ),
    );
  }
}

class DadosdosAnimais extends StatefulWidget {
  @override
  _DadosdosAnimaisState createState() => _DadosdosAnimaisState();
}

class _DadosdosAnimaisState extends State<DadosdosAnimais> {
  late int tab = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 60,
          decoration: BoxDecoration(
            color: const Color(0xFF00DA30),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() => {tab = 0}),
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 5),
                    height: 40,
                    decoration: BoxDecoration(
                      color: tab == 0
                          ? const Color(0xFF0C1E10).withOpacity(0.4)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'Dados',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() => {tab = 1}),
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 5),
                    height: 40,
                    decoration: BoxDecoration(
                      color: tab == 1
                          ? const Color(0xFF0C1E10).withOpacity(0.4)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'Localização',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (tab == 0)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Alinha os widgets à esquerda
              children: [
                Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Alinha os widgets ao topo
                  children: [
                    SvgPicture.asset('../assets/profile.svg',
                        height: 16, width: 16),
                    const SizedBox(
                        width: 8), // Espaço entre o ícone e o primeiro texto
                    Text(
                      'Apelido',
                      style: TextStyle(
                        color: const Color(0xFF0C1E10).withOpacity(0.6),
                        fontFamily: 'Axiforma',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                    height: 6), // Espaço entre o primeiro e o segundo texto
                Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Alinha os widgets ao topo
                  children: const [
                    Text(
                      'Mini boi boi boi',
                      style: TextStyle(
                        fontFamily: 'Axiforma',
                        fontSize: 24,
                        color: Color(0xFF0C1E10),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        if (tab == 0)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Alinha os widgets à esquerda
              children: [
                Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Alinha os widgets ao topo
                  children: [
                    SvgPicture.asset('../assets/raca.svg',
                        height: 16, width: 16),
                    const SizedBox(
                        width: 8), // Espaço entre o ícone e o primeiro texto
                    Text(
                      'Raça',
                      style: TextStyle(
                        color: const Color(0xFF0C1E10).withOpacity(0.6),
                        fontFamily: 'Axiforma',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                    height: 6), // Espaço entre o primeiro e o segundo texto
                Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Alinha os widgets ao topo
                  children: const [
                    Text(
                      'Hereford',
                      style: TextStyle(
                        fontFamily: 'Axiforma',
                        fontSize: 24,
                        color: Color(0xFF0C1E10),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        if (tab == 0)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Alinha os widgets à esquerda
              children: [
                Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Alinha os widgets ao topo
                  children: [
                    SvgPicture.asset('../assets/data.svg',
                        height: 16, width: 16),
                    const SizedBox(
                        width: 8), // Espaço entre o ícone e o primeiro texto
                    Text(
                      'Data de Nascimento',
                      style: TextStyle(
                        color: const Color(0xFF0C1E10).withOpacity(0.6),
                        fontFamily: 'Axiforma',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                    height: 6), // Espaço entre o primeiro e o segundo texto
                Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Alinha os widgets ao topo
                  children: const [
                    Text(
                      '12/04/2022',
                      style: TextStyle(
                        fontFamily: 'Axiforma',
                        fontSize: 24,
                        color: Color(0xFF0C1E10),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        if (tab == 0)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Alinha os widgets à esquerda
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Alinha os widgets ao topo
                        children: [
                          Text(
                            'Peso',
                            style: TextStyle(
                              color: const Color(0xFF0C1E10).withOpacity(0.6),
                              fontFamily: 'Axiforma',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          const Text(
                            '124kg',
                            style: TextStyle(
                              fontFamily: 'Axiforma',
                              fontSize: 24,
                              color: Color(0xFF0C1E10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Alinha os widgets ao topo
                        children: [
                          Text(
                            'Sexo',
                            style: TextStyle(
                              color: const Color(0xFF0C1E10).withOpacity(0.6),
                              fontFamily: 'Axiforma',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          const Text(
                            'Macho',
                            style: TextStyle(
                              fontFamily: 'Axiforma',
                              fontSize: 24,
                              color: Color(0xFF0C1E10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        if (tab == 1)
          if (tab == 1)
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/images/maps.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
      ],
    );
  }
}



/* Card Animal ----------------------------------------------
class ListagemAnimais extends StatefulWidget {
  @override
  _ListagemAnimaisState createState() => _ListagemAnimaisState();
}

class _ListagemAnimaisState extends State<ListagemAnimais> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
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
                      const Text(
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
*/

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