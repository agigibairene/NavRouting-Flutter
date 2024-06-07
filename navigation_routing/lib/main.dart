import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Routing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white10,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/laptop': (context) => const DetailPage(title: 'Laptop'),
        '/pixel1': (context) => const DetailPage(title: 'Pixel 1'),
        '/pendrive': (context) => const DetailPage(title: 'Pen Drive'),
        '/tablet': (context) => const DetailPage(title: 'Tablet'),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            parchisWidget(context),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          shape: const CircularNotchedRectangle(),
          notchMargin: 6.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.arrow_left),
                color: Colors.white,
                onPressed: () {
                  // Action for the left arrow button
                },
              ),
              IconButton(
                icon: const Icon(Icons.circle),
                color: Colors.white,
                onPressed: () {
                  // Action for the circle button
                },
              ),
              IconButton(
                icon: const Icon(Icons.square),
                color: Colors.white,
                onPressed: () {
                  // Action for the square button
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget parchisWidget(BuildContext context) {
    const double size01 = 15.0;
    const double size02 = 40.0;
    const double borderRadius = 2.0;

    return Expanded(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/pixel1');
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 10.0, top: 10.0, bottom: 10.0),
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(borderRadius),
                          bottomLeft: Radius.circular(borderRadius),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text("pixel 1",
                            style: TextStyle(
                                fontSize: size02, color: Colors.white)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                        right: 10.0, top: 10.0, bottom: 10.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(borderRadius),
                        bottomRight: Radius.circular(borderRadius),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text("Pixel",
                          style: TextStyle(fontSize: size01)),
                    ),
                  ),
                ),
              ],
            ),
          ), //Row 1/2

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/laptop');
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 10.0, top: 10.0, bottom: 10.0),
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(borderRadius),
                          bottomLeft: Radius.circular(borderRadius),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text("laptop",
                            style: TextStyle(
                                fontSize: size02, color: Colors.white)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                        right: 10.0, top: 10.0, bottom: 10.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(borderRadius),
                        bottomRight: Radius.circular(borderRadius),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Laptop", style: TextStyle(fontSize: size01)),
                          SizedBox(height: 5),
                          Text("Best performance",
                              style: TextStyle(fontSize: size01)),
                          Text("Highly recommended",
                              style: TextStyle(fontSize: size01)),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), //Row 2/2

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/tablet');
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 10.0, top: 10.0, bottom: 10.0),
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(borderRadius),
                          bottomLeft: Radius.circular(borderRadius),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text("tablet",
                            style: TextStyle(
                                fontSize: size02, color: Colors.white)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                        right: 10.0, top: 10.0, bottom: 10.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(borderRadius),
                        bottomRight: Radius.circular(borderRadius),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Tablet", style: TextStyle(fontSize: size01)),
                          SizedBox(height: 5),
                          Text("Great display",
                              style: TextStyle(fontSize: size01)),
                          Text("Very portable",
                              style: TextStyle(fontSize: size01)),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), //Row 3/3

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/pendrive');
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 10.0, top: 10.0, bottom: 10.0),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(borderRadius),
                          bottomLeft: Radius.circular(borderRadius),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text("pen drive",
                            style: TextStyle(
                                fontSize: size02, color: Colors.white)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                        right: 10.0, top: 10.0, bottom: 10.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(borderRadius),
                        bottomRight: Radius.circular(borderRadius),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Pen drive", style: TextStyle(fontSize: size01)),
                          SizedBox(height: 5),
                          Text("Fast transfer",
                              style: TextStyle(fontSize: size01)),
                          Text("High capacity",
                              style: TextStyle(fontSize: size01)),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), //Row 4/4
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;

  const DetailPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Welcome to the $title page!'),
      ),
    );
  }
}
