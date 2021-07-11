import 'package:flutter/material.dart';
import 'package:screen/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          title: Center(
              child: const Text(
            'Eco App By Maria',
            style: TextStyle(fontSize: 25, color: Colors.white),
          )),
          leading: GestureDetector(
            child: Icon(
              Icons.menu, // add custom icons also
            ),
          ),
        ),
        body: MyScreen(),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              Spacer(),
              IconButton(icon: Icon(Icons.home), onPressed: () {}),
              Spacer(),
              IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
              Spacer(),
              IconButton(
                  icon: Icon(Icons.add_shopping_cart_outlined),
                  onPressed: () {}),
              Spacer(),
              IconButton(icon: Icon(Icons.person), onPressed: () {}),
              Spacer(),
            ],
          ),
        ),
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
