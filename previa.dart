import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;

    final imageTemporaria = File(image.path);
    setState(() => this.image = imageTemporaria);
  }

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
                        : Icon(Icons.photo_camera, size: 120)),
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
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.grey.shade300),
                child: Row(
                  children: [
                    Text(
                      "Compartilhar em grupos",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  buildFloatingActionButton() {
    return FloatingActionButton(
        backgroundColor: Colors.red.shade700,
        onPressed: () {},
        child: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
            },
            icon: Icon(
              Icons.check,
              color: Colors.black,
            )));
  }
}
