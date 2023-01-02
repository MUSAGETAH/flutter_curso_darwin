import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      endDrawerEnableOpenDragGesture: false,
      onEndDrawerChanged: (isOpen) {
        print(isOpen);
      },
      endDrawer: Drawer(
        elevation: 20,
        child: Column(
          children: const [
            SizedBox(
              height: 40,
            ),
            Text(
              'text@test.cl',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xffafbdc4),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        // puedo definir el estilo para las letras aca de una vez
        // o encerrando los widget con defaulttextstyle
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 19,
        ),
        elevation: 0,
        // con esto elijo el color de la sombra
        // shadowColor: Color,
        backgroundColor: Color(0xff546e7a),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Flutter',
            ),
            Text(
              'App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
