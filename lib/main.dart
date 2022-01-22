import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Fonts',
      // Set Raleway as the default app font.
      theme: ThemeData(fontFamily: 'Merriweather'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The AppBar uses the app-default Raleway font.
      appBar: AppBar(title: const Text('Custom Fonts')),
      body: Center(
        child: Column(
          children: [
             Image.network('https://cdn.pixabay.com/photo/2019/04/29/14/32/make-the-day-great-4166221_960_720.jpg',),
            Container(
              child: Row(
                children: [

                  Expanded(child: Text(
                    'Merriweather sample',
                    style: TextStyle(fontFamily: 'Merriweather',fontSize: 70),
                  ),)
                ],
              ),
            )
          ],
          // This Text widget uses the RobotoMono font.
          
        ),
      ),
    );
  }
}