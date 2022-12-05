import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    return _buildBody;
  }
  get _buildBody{
    return Container(
        color: Colors.purple,
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                leading: Icon(Icons.face),
                title: Text("Item at $index"),
            
              ),
            );
          },
        ),
        
      );

  }
}