import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;


class APIpage extends StatefulWidget {
  const APIpage({Key? key}) : super(key: key);

  @override
  State<APIpage> createState() => _APIpageState();
}

class _APIpageState extends State<APIpage> {

  Future<String> get getAPI async{
    String url = "https://jsonplaceholder.typicode.com/users";
    http.Response response = await http.get(Uri.parse(url));

    if(response.statusCode ==200){
      return response.body;
    }else{
      throw Exception("Error Code: ${response.statusCode}");
    }
}
 void initState(){
  super.initState();
 }


  @override
  Widget build(BuildContext context) {

    APIpage();
    return Scaffold(
      body: _buildBody,

    );
  }
  get _buildBody{
    return Container(
      alignment: Alignment.center,
      child: FutureBuilder<String>(
        future: getAPI,
        builder: (context,snapshot){

          if(snapshot.hasError){
            print(snapshot.error);
            print("Error ${snapshot.error}");
            return Center(child: Text("Someting wrong while loading...!"),);
          }
          else if(snapshot.data ==null){
            return Center(child: CircularProgressIndicator(color: Colors.black),);
          }
          else{
            if(snapshot.connectionState == ConnectionState.done){
              List<dynamic> json = jsonDecode(snapshot.data ??'');
              List<String?>? users = json.map((user) => user('name') as String?).toString() as List<String?>?;
              print(json);
              return Container(
                width: double.infinity,
                child: ListView(
                  children: List.generate(users!.length, (index){
                    return Text(users[index] ?? '');
                  }),
                ),
              );
            }
            else{
              return SpinKitCircle(color: Colors.yellow,);

          }

        }
        }
      ),
    );
  }
}