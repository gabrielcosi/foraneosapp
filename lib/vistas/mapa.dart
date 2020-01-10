import 'package:flutter/material.dart';

class Contruccion extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(endDrawer: Drawer(
          child: Container(
            width: 10.00,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Text(
                    "data",
                    style: TextStyle(fontSize: 50),
                  ),
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Foraneos"),
          actions: <Widget>[
            InkWell(
              child: Icon(Icons.delete_forever),
              onTap: () {
                print("hello");
              },
            ),
            Icon(Icons.search),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.dehaze),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
            Container(
              height: 100.0,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (contex, position) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 200.0,
                      height: 150.0,
                      color: Colors.blue,
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: <Widget>[
                    TabBar(
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.blue,
                      tabs: [
                        Tab(
                          text: "Cursos",
                        ),
                        Tab(
                          text: "Works",
                        ),
                        Tab(
                          text: "Especialidades",
                        ),
                      ],
                    ),
                    Expanded(
                        child: TabBarView(children: [
                      GridView.builder(
                        itemCount: 10,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (context, position) {
                          return Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              width: 200.0,
                              height: 150.0,
                              child: Image.network(
                                  "https://www.crearlogogratisonline.com/images/crearlogogratis_1024x1024_01.png"),
                            ),
                          );
                        },
                      ),
                      Container(
                        color: Colors.yellow,
                      ),
                      Container(
                        color: Colors.brown,
                      ),
                    ]))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
