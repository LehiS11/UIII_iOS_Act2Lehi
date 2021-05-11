import 'package:flutter/material.dart';

void main() => runApp(MiFotoApp());

class MiFotoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi ejemplo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ), //Fin theme
      home: PaginaInicio(),
    ); //Fin MaterialApp
  } //Fin widget
} //Fin clase

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregando bordes'),
        centerTitle: true,
      ), //Fin AppBar
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber[50],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.greenAccent,
                    width: 5,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Lehi Hernandez',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ), //Fin Container texto

              SizedBox(height: 50),
              Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  'assets/img_lehi.jpg',
                  width: 100.0,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.greenAccent,
                      width: 5.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.greenAccent,
                      width: 5.0,
                    ),
                  ),
                ),
              ), //Fin Container Foto
              SizedBox(height: 50),
              Container(
                height: 100,
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.greenAccent,
                        width: 5.0,
                      ),
                    ),

                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.greenAccent,
                        width: 5.0,
                      ),
                    ),
                  
                
                  child: Center(
                  child: Text(
                    'Lehi Hernandez',
                    style: TextStyle(fontSize: 16),
                      ),
                          ),
              ), //Fin Container 3
            ], //Fin del children
          ), //Fin Column
        ),
      ), //Fin signle
    ); //Fin Scaffold
  }
}
}