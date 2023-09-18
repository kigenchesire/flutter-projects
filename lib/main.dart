import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click Me';
  String buttonName2 = 'Click Me';
  int currentIndex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('My App'),
          ),
          body: Center(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.orange,
                      backgroundColor: Colors.red
                    ),
                    onPressed: () {
                      setState(() {
                        buttonName = "Clicked";
                      });
                    },
                    child: Text(buttonName),
                  ),
                   ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red,
                      backgroundColor: Colors.orange
                    ),
                    onPressed: () {
                      setState(() {
                        buttonName2 = "Clicked by you";
                      });
                    },
                    child: Text(buttonName2),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: 'Settings', icon: Icon(Icons.settings)),
              BottomNavigationBarItem(
                label: 'AudioTrack',
                icon: Icon(Icons.audiotrack),
              ),
            ],
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                 currentIndex = index; 
              });        
            },
          ),
        ));
  }
}
