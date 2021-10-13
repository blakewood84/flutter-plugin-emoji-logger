import 'package:flutter/material.dart';
import 'package:emoji_logger_native/emoji_logger_native.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                EmojiLoggerNative.debug('this is debug');
              }, 
              child: Text('debug'),
            ),
            ElevatedButton(
              onPressed: () {
                EmojiLoggerNative.error('this is error');
              }, 
              child: Text('error'),
            )
          ],
        )
      ),
    );
  }
}
