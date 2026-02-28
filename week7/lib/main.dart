import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String str = 'Hello';
  bool isStatus= false;
  final List <bool> isSelected = <bool> [false, true, false];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (dialogContext) => AlertDialog(
                      title: Text('Comfiramtion'),
                      content: Text('This is a confirmation dialog'),
                      actions: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Confirm',
                              style: TextStyle(fontSize: 25),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Cancel',
                              style: TextStyle(fontSize: 25),
                            ))
                      ],
                    ));

              },
              child: const Text(
                "Okay", style:
                TextStyle(fontSize: 20),
              )),

          Text(
            str,
            style: const TextStyle(fontSize: 30),
          ),

          ToggleButtons(
              isSelected: isSelected, // 3 value
              children: [
                Padding(padding: EdgeInsets.all(20),
                  child:
                  Text(
                    'MENU 1', style: TextStyle(fontSize: 20),
                  ),

                ),
                Text(
                  'MENU 2', style: TextStyle(fontSize: 10),
                ),
                Text(
                  'MENU 3', style: TextStyle(fontSize: 10),
                )
              ],
            onPressed: (int index){
                //print(index);
              isSelected[index] = !isSelected[index];
            },
          ),

          Switch(value: isStatus,
              onChanged: (status){
            if(status){
                setState(() {
                  str = "Rangsit University";
                  isStatus = status;
                });
            }else{
              setState(() {
                str = "ICT Program";
                isStatus = status;
              });
            }
          }),
          GestureDetector(
            onTap: (){
              setState(() {
                str = "ICT Program";
              });
            },
            child: Image.asset(
                'assets/images/pawLogo.png'
            ),

          )
        ],
      ),

    );
  }
}
