import 'package:flutter/material.dart';

class Country extends StatelessWidget {
  //String newCountry = 'Ecuador en la casa';
  //const Country({super.key});

  final String newCountry;
  const Country({super.key, required this.newCountry});

  @override
  Widget build(BuildContext context) {
/*     return Card(
      
      child: Text(newCountry),
    ); */
    /*    return Card(
      child: Center(
        child: Text(newCountry),
      ),
    );
 */
    return GestureDetector(
      child: Card(
        child: Center(
          child: Text(newCountry),
        ),
      ),
      onTap: () {
        print('Hizo clic en el item: $newCountry');
      },
      onDoubleTap: () => print('Hizo doble clic en el item: $newCountry'),
      onLongPress: () {
        print('Hizo clic sostenido en el item: $newCountry');
      },
    );
  }
}
