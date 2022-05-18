import 'package:flutter_application_1/nova_publi.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool salvo = false;
  bool selecionado = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.red.shade800
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: buildAppBar(),
        body: buildBody(),
        floatingActionButton: buildFloatingActionButton(),
        bottomNavigationBar: buildBottomNavigationbar(),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("images/brasao.png", height: 40),
          Text(
            "Página Inicial",
            style: TextStyle(color: Colors.black),
          ),
          Text("PM-PB",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        ],
      ),
    );
  }

  buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child:
                                  Image.asset("images/police.png", height: 40)),
                          Container(
                              margin: EdgeInsets.all(10),
                              child: Text.rich(TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: "Policial Santos\n",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: "Há 13min",
                                    style: TextStyle(fontSize: 10))
                              ]))),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(25, 12, 0, 0),
                                  child: Text(
                                    "Adolescentes são abordados com maconha",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.all(7),
                                child: Text(
                                  "Suspeitos foram encontrados com maconha nas redondezas do Mangabeira.",
                                  style: TextStyle(fontSize: 15),
                                  textAlign: TextAlign.justify,
                                ),
                              )),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Image.asset("images/policial.png")),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(selecionado
                                          ? Icons.thumb_up
                                          : Icons.thumb_up_alt_outlined),
                                      onPressed: () {
                                        setState(() {
                                          selecionado = !selecionado;
                                        });
                                      },
                                    ),
                                    Text(
                                      "13",
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                              IconButton(
                                  icon: Icon(Icons.comment_outlined),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(salvo
                                      ? Icons.bookmark
                                      : Icons.bookmark_border_outlined),
                                  onPressed: () {
                                    setState(() {
                                        salvo = !salvo;
                                      });
                                    if (salvo) {
                                      Fluttertoast.showToast(
                                        msg: "Post Salvo!",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.TOP,
                                        timeInSecForIosWeb: 2,
                                        backgroundColor: Colors.black,
                                      );                                    
                                    }
                                  }),
                              IconButton(
                                  icon: Icon(Icons.share), onPressed: () {}),
                            ],
                          ),
                          Card(
                            color: Colors.grey.shade300,
                            child: Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.account_circle),
                                    onPressed: () {}),
                                Column(
                                  children: [
                                    Text.rich(TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Marcos\n",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                        text: "Essa juventude está perdida!",
                                      )
                                    ]))
                                  ],
                                )
                              ],
                            ),
                          ),
                          Card(
                            color: Colors.grey.shade300,
                            child: Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.account_circle),
                                    onPressed: () {}),
                                Column(
                                  children: [
                                    Text.rich(TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Pedro\n",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                        text: "Parabéns Senhores !",
                                      )
                                    ]))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Image.asset(
                                "images/police.png",
                                height: 40,
                              )),
                          Container(
                            margin: EdgeInsets.only(left: 13),
                            child: Text("Policial Santana",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(15, 20, 0, 10),
                                  child: Text("Lorem ipsum dolor sit amet",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Image.asset("images/policial.png")),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.all(7),
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tempor eros id sem suscipit, et sollicitudin est ultricies. Proin condimentum iaculis ipsum a consequat. Nam porta nisl arcu, vitae aliquam tortor tempus et. Nam sed risus nec arcu ullamcorper euismod.",
                                  style: TextStyle(fontSize: 15),
                                  textAlign: TextAlign.justify,
                                ),
                              )),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 9),
                                  child: Text(
                                    "Há 1h",
                                    style: TextStyle(fontSize: 11),
                                  ))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.thumb_up_alt_outlined),
                                      onPressed: () {},
                                    ),
                                    Text(
                                      "16",
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                              IconButton(
                                  icon: Icon(Icons.comment_outlined),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(Icons.bookmark_border),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(Icons.share), onPressed: () {}),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 13),
                              child:
                                  Image.asset("images/police.png", height: 40)),
                          Text("Policial Barbosa",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(15, 20, 0, 10),
                                  child: Text("Lorem ipsum dolor sit amet",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Image.asset("images/policial.png"))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.all(7),
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tempor eros id sem suscipit, et sollicitudin est ultricies. Proin condimentum iaculis ipsum a consequat. Nam porta nisl arcu, vitae aliquam tortor tempus et. Nam sed risus nec arcu ullamcorper euismod.",
                                  style: TextStyle(fontSize: 15),
                                  textAlign: TextAlign.justify,
                                ),
                              )),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 9),
                                child: Text("Há 2h",
                                    style: TextStyle(fontSize: 11)),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.thumb_up_alt_outlined),
                                      onPressed: () {},
                                    ),
                                    Text(
                                      "25",
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                              IconButton(
                                  icon: Icon(Icons.comment_outlined),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(Icons.bookmark_border),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(Icons.share), onPressed: () {}),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return novaPubli();
          }),
        );
      },
      child: Icon(Icons.add_rounded, color: Colors.black, size: 30),
      backgroundColor: Colors.red.shade800,
    );
  }

  buildBottomNavigationbar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.red.shade800,
      selectedFontSize: 15,
      selectedItemColor: Colors.grey.shade300,
      unselectedItemColor: Colors.black,
      currentIndex: currentIndex,
      onTap: (index) => setState(() => currentIndex = index),
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "Feed"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: "Perfil"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.groups_rounded,
              color: Colors.black,
            ),
            label: "Grupos"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              color: Colors.black,
            ),
            label: "Salvos"),
      ],
    );
  }
}
