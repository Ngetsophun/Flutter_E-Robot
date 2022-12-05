import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyStatedull extends StatefulWidget {
  const MyStatedull({Key? key}) : super(key: key);

  @override
  State<MyStatedull> createState() => _MyStatedullState();
}

class _MyStatedullState extends State<MyStatedull> {

 
 
  bool _selectcolor = false;
  bool _floating = true;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: _buildAppBar,
      body: Container(color: _selectcolor?Colors.white:Colors.black),
      floatingActionButton: _floating? _buildfloating:null,
    );
  }
  get _buildAppBar=>AppBar(
    backgroundColor: _selectcolor ==true?Colors.indigo:Colors.purple,
    title: Text(_selectcolor?"Dart":"Light"),
    actions: [
      IconButton(onPressed: (){
        setState(() {
         _floating =! _floating;
        });
      }, icon: Icon(Icons.settings),),
      IconButton(onPressed: (){
        setState(() {
          _selectcolor=!_selectcolor;
        });
      }, icon: Icon(Icons.play_arrow),)
    ],
  );
  get _buildfloating=>FloatingActionButton(
    child: Icon(Icons.home),
    onPressed: (){

    },

  );
}