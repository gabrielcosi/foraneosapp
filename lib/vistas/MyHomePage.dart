
import 'package:flutter/material.dart';

import 'mapa.dart';



class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: _Lista(context),
    );
  }
}
//contuyo mi propio Widget
Widget _Lista(BuildContext context) {
  return ListView(
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text("opcion 1"),
            leading: Icon(Icons.accessibility),
            onTap: (){
              //declaro a donde se rediccionara
              final route = MaterialPageRoute(
                 builder:(context) => Contruccion()
               );
               Navigator.push(context, route);
            },
          ),
          //nada relevante
        Padding(
            padding: const EdgeInsets.all(12.0),
              child: Text(
               "data",
               style: TextStyle(
                 color: Colors.blue,
                 fontWeight: FontWeight.w600,
                 fontSize: 20.0,
               ),
             ),
           ),
           /*FloatingActionButton(
             child: Icon( Icons.access_time  ),
             onPressed: (){
               final route = MaterialPageRoute(
                 builder:(context) => Contruccion()
               );
               Navigator.push(context, route);
             },
           )*/
          ],
          
        )
         
      ]
    );
  }