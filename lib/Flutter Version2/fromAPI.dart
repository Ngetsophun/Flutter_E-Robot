import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tranning_erobot/Flutter%20Version2/user_class.dart';

class APIData extends StatefulWidget {
  const APIData({super.key});

  @override
  State<APIData> createState() => _APIDataState();
}

class _APIDataState extends State<APIData> {

  Future<List<Users>> getRequest() async {
    var client = http.Client();

    var uri = Uri.parse("http://192.168.43.230:3000/API");
    //var uri = Uri.parse("https://jsonplaceholder.typicode.com");
    var respone = await client.get(uri);

    var responseData = json.decode(respone.body);

    List<Users> users = [];
    for(var singleUser in responseData){
      Users user = Users(
        id: singleUser["id"],
        userId: singleUser["userId"],
        title: singleUser["title"],
        body: singleUser["body"]
      );
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }
  get _buildBody{
    return Container(
      child: FutureBuilder(
        future: getRequest(),
        builder: (BuildContext ctx, AsyncSnapshot snapshot ){
          if(snapshot.data == null){
            return Container(
              child: Center(child: CircularProgressIndicator(),

              ),
            );
          }else{
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (ctx,index)=>ListTile(
                  title: Text(snapshot.data[index].title),
                  subtitle: Text(snapshot.data[index].body),
                ),
            );
          }

        },
      ),

    );
  }
}