import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyFutureBuilder extends StatefulWidget {
  const MyFutureBuilder({Key? key}) : super(key: key);

  @override
  State<MyFutureBuilder> createState() => _MyFutureBuilderState();
}


class _MyFutureBuilderState extends State<MyFutureBuilder> {

  Future<int> add(int a, int b){
    return Future.delayed(Duration(seconds: 3),()=>a+b );
  }
  
  void initState(){
    super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Level 2"),
      ),
      body: _buildBody,
    );
  }
  get _buildBody{
    return Container(
      alignment: Alignment.center,
      child: FutureBuilder<int>(
        future: add(10, 20),
        builder: (context, snapshot){
          if(snapshot.hasError) return Center(child: Text("Error ${snapshot.error}"),);
          else{
            if(snapshot.connectionState == ConnectionState.done){
              return Center(child: Text("data = ${snapshot.data}"),);
            }
            else{
              return CircularProgressIndicator();
            }
          }
          
        },
      ),

    );
  }
}