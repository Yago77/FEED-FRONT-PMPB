import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/nova_publi.dart';
import 'package:flutter_application_1/pageini.dart';
import 'package:image_picker/image_picker.dart';

class Previa extends StatefulWidget {
  const Previa({Key? key}) : super(key: key);

  @override
  State<Previa> createState() => _PreviaState();
}

class _PreviaState extends State<Previa> {
  File? image;

  get source => null;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporaria = File(image.path);
      setState(() => this.image = imageTemporaria);
      
    } on PlatformException catch (e) {
      print('Failed: $e');
    }
  }

  var item1 = '  Primeiro Batalhão';
  final items = [
    '  Primeiro Batalhão',
    '  Segundo Batalhão',
    '  Terceiro Batalhão',
  ];
  int currentIndex = 0;
  String? value;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
          color: Colors.red.shade800,
        )),
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar(),
          body: buildBody(),
          floatingActionButton: buildFloatingActionButton(),
        ));
  }

  buildAppBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("images/brasao.png", height: 40),
          Text("Nova Publicação", style: TextStyle(color: Colors.black)),
          IconButton(
            icon: Icon(
              Icons.close_rounded,
              color: Colors.black,
              size: 35,
            ),
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
            },
          )
        ],
      ),
    );
  }

  buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Text("Título",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    )),
                Container(
                    child: image != null
                        ? Image.file(image!)
                        : Icon(Icons.add_box_outlined, size: 120)),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton.icon(
                        onPressed: () => pickImage(ImageSource.camera),
                        icon: Icon(Icons.add_a_photo, color: Colors.black),
                        label: Text("Usar câmera",
                            style: TextStyle(color: Colors.black)),
                      ),
                      TextButton.icon(
                          onPressed: () => pickImage(ImageSource.gallery),
                          icon: Icon(
                            Icons.photo_library_rounded,
                            color: Colors.black,
                          ),
                          label: Text(
                            "Usar a galeria",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tincidunt mi tellus, quis maximus velit suscipit eget. In accumsan ultricies nunc vitae volutpat. Integer suscipit orci eros, in sollicitudin nunc egestas vel. Nullam condimentum fringilla leo ut dignissim. Suspendisse blandit elementum velit, non suscipit ipsum ullamcorper vitae. Mauris eu elit justo. Praesent cursus sed eros id venenatis. Curabitur id felis pulvinar, placerat tortor ut, lacinia lectus. Duis feugiat non est eu mollis. In turpis diam, sodales eu tellus eget, mollis luctus tortor. ",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                spreadRadius: 0,
                                blurRadius: 0,
                                offset: Offset(0, 0))
                          ],
                          border: Border.all(
                              color: Color.fromARGB(255, 104, 103, 103),
                              width: 2),
                        ),
                        margin: EdgeInsets.all(10),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Colors.black,
                              ),
                              value: item1,
                              items: items.map(buildMenuItem).toList(),
                              onChanged: (value) {
                                item1 = value!;
                                setState(() {});
                              }),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(color: Colors.black),
        ),
      );

  buildFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: Colors.red.shade700,
      onPressed: () {},
      child: Icon(
        Icons.check,
        color: Colors.black,
      ),
    );
  }
}
