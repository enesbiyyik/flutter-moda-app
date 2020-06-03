import 'package:flutter/material.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text(
          "Moda App",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_camera),
            onPressed: () {},
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: <Widget>[
          Container(
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
                SizedBox(width: 30),
                listeElemani('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
                SizedBox(width: 30),
                listeElemani('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue.shade300,
              child: Container(
                padding: EdgeInsets.all(16),
                height: 475,
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/model1.jpeg'),
                          radius: 30,
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Daisy",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 5),
                              Text(
                                "34 mins ago",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      "This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparamentans is recomended to friends",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 200,
                          width: (MediaQuery.of(context).size.width-60)/2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage('assets/modelgrid1.jpeg'), fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: <Widget>[
                            Container(
                              height: 95,
                              width: (MediaQuery.of(context).size.width-110)/2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage('assets/modelgrid2.jpeg'), fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 95,
                              width: (MediaQuery.of(context).size.width-110)/2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage('assets/modelgrid3.jpeg'), fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Text("#LouisVuitton", style: TextStyle(fontFamily: 'Montserrat', fontSize: 10),),
                        ),
                        SizedBox(width: 10),
                        Container(
                          alignment: Alignment.center,
                          width: 75,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Text("#Chloe", style: TextStyle(fontFamily: 'Montserrat', fontSize: 10),),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(color: Colors.grey,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.contain),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Text(
            "Follow",
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
