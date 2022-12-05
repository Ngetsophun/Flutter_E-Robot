import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetAPIList extends StatefulWidget {
  const GetAPIList({Key? key}) : super(key: key);

  @override
  State<GetAPIList> createState() => _GetAPIListState();
}

class _GetAPIListState extends State<GetAPIList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API LIst"),
      ),
     // body: _buildBody,

    );
  }
}