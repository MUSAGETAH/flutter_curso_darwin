import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SAFE AREA EVITA QUE EL CONTENID ESTE POR DETRAS DEL STATUS BAR
      // Y POR DETRAS DEL MENU INFERIOR
      // ENTONCS ESTATUS BAR QUEDA POR ENCIMAY EL MENU INFERIOR IGUAL
      body: SafeArea(
        // ESTO DEJA QUE ARRIBA EL CONTENIDO PUEDA PSAR POR ENCIMA DEL STATUS BAR
        // top: false,
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  18,
                  (index) => Container(
                    height: 100,
                    width: 100,
                    color: Colors.primaries[index],
                    alignment: Alignment.center,
                    child: Text('$index'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                // // desactivar efecto de rsorte
                // physics: ClampingScrollPhysics(),

                // HACEMOS QUE EL TECLADO DESAPAREZCA AL HACER SCROLL CUABDO HAY TEXTFIELD ARRIBA
                // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                children: [
                  // TextField(),
                  Text('HELLO'),
                  Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 600,
                    color: Colors.red,
                  ),
                  Text('HELLO'),
                  Text('HELLO'),
                  Text('HELLO'),
                  Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
