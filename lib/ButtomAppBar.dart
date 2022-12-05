import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtomAppBars extends StatefulWidget {
  const ButtomAppBars({Key? key}) : super(key: key);

  @override
  State<ButtomAppBars> createState() => _ButtomAppBarsState();
}

class _ButtomAppBarsState extends State<ButtomAppBars> {
  final _scaffoldkey  = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      bottomNavigationBar: _buildBotom,
      //floatingActionButtonLocation: FloatingActionButtonLocation.,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        splashColor: Colors.amber,
        child: Icon(Icons.add),
        onPressed: (){
          SnackBar snackBar = SnackBar(
            content: Text("Hello"),
          );
          //_scaffoldkey.currentState.showSnackBar(snackBar);
        },
        
      ),
    );
  }

  get _buildBotom=>BottomAppBar(
    color: Colors.amber[50],
    child: Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [ 
        IconButton(onPressed: (){}, icon: Icon(Icons.home)),
        IconButton(onPressed: (){}, icon: Icon(Icons.play_circle)),
        IconButton(onPressed: (){}, icon: Icon(Icons.person)),
        IconButton(onPressed: (){}, icon: Icon(Icons.group)),
        IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
      ]
    ),
  );

  get _buildNavigation =>BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        
      ),
      BottomNavigationBarItem(icon: Icon(Icons.group)),
    ],

  );
}