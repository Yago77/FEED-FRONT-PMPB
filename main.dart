import 'package:flutter/material.dart';
main () => runApp(MainApp());

class MainApp extends StatefulWidget {
  const MainApp({ Key? key }) : super(key: key);

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
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add_box_outlined, color: Colors.black,size: 40),
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
              IconButton(icon: Icon(Icons.bookmark_rounded ,color: Colors.black), onPressed: () {},),
              IconButton(icon: Icon(Icons.search, color: Colors.black), onPressed: () {},),
              IconButton(icon: Icon(Icons.groups, color: Colors.black), onPressed: () {},),
              IconButton(icon: Icon(Icons.person, color: Colors.black), onPressed: () {},),
            ],
          ),
        ),
      ),
    );
  }
}

body() {
  return SingleChildScrollView(
    child: Container(
      margin: EdgeInsets.all(10),
      child: Card(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(icon: Icon(Icons.person_pin, color:Colors.black,size: 55), onPressed: () {}),
                Text("         Policial Santos" ,style: TextStyle(fontSize: 17 ,fontWeight: FontWeight.bold))
              ],
            ),
            Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(80, 40, 0, 10),
                        child: Text("Título" ,style: TextStyle(color: Colors.black, fontSize: 16))
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Image.asset("images/policial.png")),
                    ],
                  ),
                  Row(
                    children:[
                      Text("Descrição da postagem"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[
                      IconButton(icon: Icon(Icons.thumb_up_alt_outlined), onPressed: () {}),
                      IconButton(icon: Icon(Icons.comment_rounded), onPressed: () {}),
                      IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {}),
                      IconButton(icon: Icon(Icons.share), onPressed: () {})
                    ],
                  )
                ],
              ),
          ],
        ),
      ),
    ),
  );
}

appBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("images/brasao.png", height: 40),
        Text("PM-PB" , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
      ],
     ),
  );
}