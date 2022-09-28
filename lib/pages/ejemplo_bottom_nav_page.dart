import 'package:flutter/material.dart';
import 'package:flutter_application_14092022_2/pages/nav_content/nc_page1.dart';
import 'package:flutter_application_14092022_2/pages/nav_content/nc_page2.dart';
import 'package:flutter_application_14092022_2/pages/nav_content/nc_page3.dart';
import 'package:flutter_application_14092022_2/pages/nav_content/nc_page4.dart';
class EjemploBottomNavPage extends StatefulWidget {
  //const EjemploBottomNavPage({super.key});

  @override
  State<EjemploBottomNavPage> createState() => _EjemploBottomNavPageState();
}

class _EjemploBottomNavPageState extends State<EjemploBottomNavPage> {
  int paginaSel = 0;
  final paginas = [NcPage1(), NcPage2(), NcPage3(), NcPage4()];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Bottom Nav'),
      ),
      body: paginas[paginaSel],
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,
        currentIndex: paginaSel,
        onTap: (index) {
          //print('Tap:'+index.toString());
          setState(() {
            paginaSel = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined),
            label: 'Página 1',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon : Icon(Icons.abc),
            //icon: Icon(MdiIcons.earth),
            label: 'Página 2',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined),
            label: 'Página 3',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_outlined),
            label: 'Página 4',
            backgroundColor: Colors.purple,
          ),
        ],
      ),
    );
  }
  /*
  void navegar(BuildContext context, int numPagina) {
    List paginas = [NcPage1(), NcPage2, NcPage3(), NcPage4()];

    MaterialPageRoute route = MaterialPageRoute(builder: (context) => paginas[numPagina -1],);

    Navigator.push(context, route);
  }
  */
}