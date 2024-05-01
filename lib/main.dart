import 'package:flutter/material.dart';

import 'myapptwo.dart';
import 'country.dart';

void main() {
  // runApp(const MyApp());

  runApp(MyAppTwo());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  final List<String> countries = [
    'Salvador',
    'mexico',
    'Usa',
    'Corea',
    'venezuela',
    'Colombia',
    'Japon'
  ];

  @override
  Widget build(Object context) {
    //retunr con gui de la pantalla.
    print('Se ejecuto el evento: build');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      title: 'Primera App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Este es el Titulo de AppBar',
            style: TextStyle(
                //color: Colors.white,
                ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                print('Presiono en: search');
              },
              icon: const Icon(Icons.search),
              color: Colors.white,
            ),
            const IconButton(
              onPressed: null,
              icon: Icon(Icons.more_vert),
              color: Colors.white,
            ),
          ],
          //backgroundColor: Colors.cyan,
          centerTitle: true,
        ),
        /*        body: const Center(
          child: Text(
            "Este es el body del Scaffold",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              //backgroundColor: Colors.amber,
            ),
          ),
        ), */
        //       body: const Center(
        //         child: Country(
        //           newCountry: 'Portugal',
        //         ),
        //       ),
        /* body: const Column(
          //mainAxisAlignment: MainAxisAlignment.center,

          children: <Country>[
            Country(newCountry: 'Ecuador'),
            Country(newCountry: 'Peru'),
            Country(newCountry: 'Chile'),
          ],
        ),
 */

        body: Column(
            children:
                countries.map((item) => Country(newCountry: item)).toList()),

        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center_sharp),
            label: 'Negocios',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), label: 'Escuela', tooltip: 'hola'),
        ]),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              countries.add('Rusia');
              print('Cantidad: ${countries.length}');
              //print('Presiono el boton');
            },
            //backgroundColor: Colors.amber,
            child: const Icon(
              Icons.add,
              //color: Colors.white,
            )),
      ),
    );
  }
}
