import 'package:flutter/material.dart';  

void main() {  
  runApp(MyApp());  
}  

class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: 'My Simple App',  
      theme: ThemeData(  
        primarySwatch: Colors.blue,  
      ),  
      home: MyHomePage(),  
    );  
  }  
}  

class MyHomePage extends StatelessWidget {  
  void _printMessage() {  
    print('ElevatedButton clicked!');  
  }  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text('Welcome App'),  
      ),  
      body: Center(  
        child: Padding(  
          padding: const EdgeInsets.all(16.0),  
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.center,  
            children: <Widget>[  
              Text(  
                'Welcome to My Simple App!',  
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),  
                textAlign: TextAlign.center,  
              ),  
              SizedBox(height: 20), // Adds space between widgets  
              ElevatedButton(  
                onPressed: _printMessage,  
                child: Text('Click Me'),  
              ),  
              SizedBox(height: 20), // Adds space between widgets  
              Image.network(  
                'https://via.placeholder.com/150', // Replace with your image URL  
                width: 150,  
                height: 150,  
              ),  
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}