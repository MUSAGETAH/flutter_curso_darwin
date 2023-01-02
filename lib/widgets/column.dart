import 'package:flutter/material.dart';

class myColumn extends StatelessWidget {
  const myColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        color: Colors.black,
      ),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          vertical: 55,
        ),
        child: Center(
          // este container secalculaporel center puesto comno padre
          child: Container(
            color: Colors.grey,
            child: Column(
              // con el min la columna se adecua al tamaño de sus hijos
              // si pusiera max haria lo contrario
              // solo si matuviera el center
              // mainAxisSize: MainAxisSize.min,

              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // Text('HELLO'),
                // const Text(
                //   'WORLD',
                //   style: TextStyle(
                //       color: Colors.blue,
                //       fontSize: 25,
                //       fontWeight: FontWeight.bold),
                // ),

                // // este widget realiza la tarea del MainAxisAlignment.spaceAround o los demas space
                // const Spacer(),


                // para que el container rosa ocupe todo el espacio dispinible usamos expanded
                // solo sirve en tipo column o row
                Expanded(
                  child: Container(
                    // el expanded ignora el heigh
                    height: 100,
                    color: Colors.pinkAccent,
                    // podemos usar esto o sizebox
                    // margin: EdgeInsets.only(top: 20),
                  ),
                ),
                Container(
                  height: 100,
                  color: Colors.blueAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
