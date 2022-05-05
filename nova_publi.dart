import 'package:flutter/material.dart';
import 'package:pmpb/main.dart';

class novaPubli extends StatefulWidget {
  const novaPubli({ Key? key }) : super(key: key);

  @override
  State<novaPubli> createState() => _novaPubliState();
}

class _novaPubliState extends State<novaPubli> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Nova Publicação")
        ),
      ),
    );
  }
}