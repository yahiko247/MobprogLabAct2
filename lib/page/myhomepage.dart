import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  
  @override
  
  Widget build(BuildContext context){
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage()
     );
  }
}
      
class HomePage extends StatelessWidget {
  List names = ['Vincent', 'Jessica', 'Noey'];
  
  int counting(str){
    int countLetter = str.length;
    return countLetter;
  }
  
  
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('MyAppBar'),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.add_alert)
      ),
      body: ListView(
        children: [
          for (String name in names)
          ListTile(
            leading: Icon(Icons.person),
            title: Text(name),
            subtitle: Text(counting(name).toString() + ' ' + "Letter(s)"),
          ),
        ],
      ),
    );
  }
}