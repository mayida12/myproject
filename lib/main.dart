import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'submit',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 0.0,
          title: Text(
            "Bella Edward",
            style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      
            
          centerTitle: true,
          
          leading: Icon(Icons.arrow_back_ios_new, size: 28,color: Colors.black),
        ),
        body: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  height: 250.0,
                  width: double.infinity,
                  child: Image.network("https://images.pexels.com/photos/295821/pexels-photo-295821.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
              
                ),
              ],
            ),
              Positioned(
                  left: 100,
                  bottom: 0,
                  child: Text(
                    "Graphic Designer",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                  Positioned(
                  left: 100,
                  right: 100,
                  bottom: 0,
                  child: Text(
                    "California,US",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
 Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      print("pressed");
                    },
                    child: Text("FOLLOW")),
              ),
            ),
          ],
        ));
  }
}