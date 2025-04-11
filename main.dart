
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Presbyopia Vision Test',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Presbyopia Vision Test')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hold your phone at 40 cm and try to read:', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Share.share('Result: Possible presbyopia detected.');
              },
              child: Text('Share Result'),
            ),
          ],
        ),
      ),
    );
  }
}
