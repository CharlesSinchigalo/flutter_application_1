import 'package:flutter/material.dart';
import 'country.dart';

class MyAppTwo extends StatefulWidget {
  const MyAppTwo({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyAppTwoState();
  }
}

class _MyAppTwoState extends State<MyAppTwo> {
/*   final List<String> countries = [
    'Salvador',
    'mexico',
    'Usa',
    'Corea',
    'venezuela',
    'Colombia',
    'Japon'
  ]; */

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

        /*  body: Column(
            children:
                countries.map((item) => Country(newCountry: item)).toList()), */
/* 
        body: ListView(
            children:
                countries.map((item) => Country(newCountry: item)).toList()), */

        /*      body: ListView.builder(
          //     itemCount: countries.length,
          itemBuilder: (context, index) {
            //return Country(newCountry: countries[index]);
            return Country(newCountry: index.toString());
          },
        ),
 */

        body: Container(
          child: ListView.builder(
            //     itemCount: countries.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //return Country(newCountry: countries[index]);
              return Country(newCountry: index.toString());
            },
          ),
        ),

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
              setState(() {});

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

  List<String> countries = [];

  @override
  void initState() {
    super.initState();
    print('Se ejecuto el evento: iniseState');

    countries = [
      'Salvador',
      'mexico',
      'Usa',
      'Corea',
      'venezuela',
      'Colombia',
      'Japon',
      'Argentina'
    ];
  }
}
