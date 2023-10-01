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


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage());
  }
}

class FirstPage  extends StatelessWidget {
  const FirstPage ({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
            title: const Text('My App'),
          ),
          body: Center(
            child: 
                 SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.orange,
                              backgroundColor: Colors.blue),
                          onPressed: () {
    
                          },
                          child: const Text("Button"),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.red,
                              backgroundColor: Colors.blue),
                          onPressed: () {
                            
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const SecondPage();
                              }));
  
                          },
                          child:  const Text("Second Page"),
                        ),
                      ],
                    ),
                  )
               
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
          ),
        );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
    );
  }
}
