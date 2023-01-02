import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class myRow extends StatelessWidget {
  const myRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.end 
          // me permite alinear los elementos mas pequeños que contenga el row
          // en sentido vertical
          // si usara strech los elementos ocuparan todo el espcio posible
          // independiente del center
          crossAxisAlignment: CrossAxisAlignment.center,

          // si uso MainAxisSize.min ya no ocupara el ancho completo
          // si no solo el ancho que tienen los elementos hijos
          // mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ),
             Container(
              width: 50,
              height: 100,
              color: Colors.yellow,
            ),
             Expanded(
               child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
                         ),
             ),

            
            
          ],
        ),
      ),
    );
  }
}
