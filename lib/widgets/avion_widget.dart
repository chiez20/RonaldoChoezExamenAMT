import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/avion.dart';

class AvionWidget extends StatelessWidget {
  final Avion avion;
  final Function onTap;


  const AvionWidget(
      {Key? key,
      required this.avion,
      required this.onTap,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
      },
      onLongPress: () {
      },
      onTap: () {
        onTap(avion);
      },
      
      child: Container(
      
        padding: const EdgeInsets.all(10.0),
        height: 80.0,

        child: Row(
       
          
          children: <Widget> [
            
            
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                
              ),
              
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Nombre : ${avion.nombre}', style: fromTextStyle),
                   Text('Capacidad tripulantes :${avion.capacidad}', style: subjectTextStyle),
                  Text('Valor USD : ${avion.valor}',
                      style: fromTextStyle),
                 
                ],
              ),
            )
       
          ],
        ),
      ),
    );
  }
}
