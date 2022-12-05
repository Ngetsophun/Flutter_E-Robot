import 'package:flutter/material.dart';
class DetailMoviePage extends StatefulWidget {
  const DetailMoviePage({Key? key}) : super(key: key);

  @override
  State<DetailMoviePage> createState() => _DetailMoviePageState();
}

class _DetailMoviePageState extends State<DetailMoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("App Bar"),
      ),
      body: _buildBody,

    );
  }
  get _buildBody{
    return Container(
      color: Colors.blue,
     

    );
  }
}