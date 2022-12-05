import 'package:flutter/material.dart';

import 'ListView_builder.dart';
class DetailPage extends StatefulWidget {
  //const DetailPage({Key? key}) : super(key: key);

  Movie movie;
  DetailPage({required this.movie});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  late Movie _movie;
  @override
  Widget build(BuildContext context) {

   _movie = widget.movie;
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("${_movie.title}"),
      ),
      body: Container(
        child: Image.network(_movie.img,fit: BoxFit.cover,),
      ),

    );
  }
}