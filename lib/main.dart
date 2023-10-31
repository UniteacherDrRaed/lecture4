import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.add),
        title: const Text("example"),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                const  SnackBar(duration: Duration(seconds: 2),
                    backgroundColor: Colors.green,
                    showCloseIcon: true,
                    closeIconColor: Colors.white,
                    content: Text("Example 1"))
                );
              },
              icon: const Icon(Icons.message))
        ],
      ),
      body: Container(
         margin: const EdgeInsets.all(10),
         padding:const EdgeInsets.all(10),
         height: 150,
         width: 250,
         decoration: BoxDecoration(
           gradient: const LinearGradient(
             colors:  [
               Colors.green,
               Colors.white,
             ]
           ),
           boxShadow: [
             BoxShadow(
               color:Colors.blue.shade100,
               offset:const Offset(4,5),
             )
           ]
         ),
        child: const Text("This is a container"),
      ),
    );
  }
}
