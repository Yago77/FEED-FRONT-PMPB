import 'package:flutter/material.dart';
import 'package:pmpb/nova_publi.dart';

main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.red.shade800,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add_box_outlined, color: Colors.black, size: 40),
          backgroundColor: Colors.red.shade800,
        ),
        appBar: appBar(),
        body: body(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.red.shade800,
          shape: CircularNotchedRectangle(),
          notchMargin: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.bookmark_rounded, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.groups, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

body() {
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
                        IconButton(
                            icon: Icon(Icons.person_pin,
                                color: Colors.black, size: 55),
                            onPressed: () {}),
                        Text("           Policial Santos",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.fromLTRB(80, 40, 0, 10),
                                child: Text("Título",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)))
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Image.asset("images/policial.png")),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.all(7),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tempor eros id sem suscipit.",
                                style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                          ],
                        ),
                        Row(
                          children: [],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                icon: Icon(Icons.thumb_up_outlined),
                                onPressed: () {}),
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
                        IconButton(
                            icon: Icon(Icons.person_pin,
                                color: Colors.black, size: 55),
                            onPressed: () {}),
                        Text("           Policial Santos",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.fromLTRB(80, 40, 0, 10),
                                child: Text("Título",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)))
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Image.asset("images/policial.png")),
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                icon: Icon(Icons.thumb_up_outlined),
                                onPressed: () {}),
                            IconButton(
                                icon: Icon(Icons.comment_rounded),
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
                        IconButton(
                            icon: Icon(Icons.person_pin,
                                color: Colors.black, size: 55),
                            onPressed: () {}),
                        Text("           Policial Santos",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.fromLTRB(80, 40, 0, 10),
                                child: Text("Título",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)))
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Image.asset("images/policial.png")),
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                icon: Icon(Icons.thumb_up_outlined),
                                onPressed: () {}),
                            IconButton(
                                icon: Icon(Icons.comment_rounded),
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

appBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("images/brasao.png", height: 40),
        Text("PM-PB",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
      ],
    ),
  );
}
