import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:image_picker/image_picker.dart';
import 'package:flutter_application_1/previa.dart';

class novaPubli extends StatefulWidget {
  const novaPubli({Key? key}) : super(key: key);

  @override
  State<novaPubli> createState() => _novaPubliState();
}

class _novaPubliState extends State<novaPubli> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
            backgroundColor: Colors.red.shade800,
            title: Row(
              children: [
                Image.asset(
                  'images/brasao.png',
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.only(left: 65),
                  child: Text(
                    "Nova publicação",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(25),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/Unknown_person.jpg"),
                    ),
                    Text(
                      "    Geraldo",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                //margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.6, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black),
                  ),
                ),
                child: TextField(
                  style: TextStyle(
                      fontSize: 40.0, height: 1.0, color: Colors.black),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 8),
                      hintText: "Título",
                      hintStyle: TextStyle(fontSize: 30),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),
                ),
              ),
              Container(
                child: TextField(
                  keyboardType: TextInputType.text,
                  maxLines: null,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 8),
                    hintText: "Descrição",
                    hintStyle: TextStyle(fontSize: 20),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Material(
          color: Colors.red.shade800,
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Previa();
              }));
            },
            child: SizedBox(
                height: 56,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.perm_media_outlined),
                    Text(
                      " Postar com imagem",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red.shade800,
          onPressed: () {},
          child: Icon(
            Icons.check,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
