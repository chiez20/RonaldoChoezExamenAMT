import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/backend.dart';
import '../widgets/avion_widget.dart';
import 'detail_screen.dart';
import '../model/avion.dart';

class ListScreen extends StatefulWidget {


  const ListScreen({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {


  
  
  var aviones = Backend().getAviones();
 

  void showDetail( Avion avion) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen( avion: avion,);
    }));
    
    setState(() {
 
      aviones = Backend().getAviones();
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), 

       
      ),


      
      body: ListView.separated(
        itemCount: aviones.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: primaryColor,
          indent: 40.0,
          endIndent: 20.0,
        ),
          itemBuilder: (BuildContext context, int index) => AvionWidget(
          avion: aviones[index],
          onTap: showDetail,  
    
  
        ),
      
          
      ),  

    );  
  }
}
