import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../Repos/Home_page_repo.dart';


class MyGetData extends StatefulWidget {
  const MyGetData({Key? key}) : super(key: key);

  @override
  State<MyGetData> createState() => _MyGetDataState();
}

class _MyGetDataState extends State<MyGetData> {

  
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API"),
      ),
      body: _buildBody,
    );
  }
  get _buildBody{
    return Container(
      alignment: Alignment.center,
      child: FutureBuilder<String>(
        future: getData,
        builder: (context,snapshot){
          if(snapshot.hasError){
            print("Error ${snapshot.error}");
            return Center(child: Text("Something wrong to loading"),);
          }
          else{
            if(snapshot.connectionState == ConnectionState.done){
             // print(snapshot.data);
              return Center(child: Text("Done"),);
            }
            else{
              return SpinKitCircle(color: Colors.black,);
            }
          }
        },
      ),
    );

  }
}