import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return _buildBody;
  }
  get _buildBody{
    return Container(
        color: Colors.pink,
        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJDqBszV_zvs_4ivjdxakIem3jRv9NRl5E8rdXqYYgZoosS8VVi6TVLpmZeqgbdw7qlc&usqp=CAU",fit: BoxFit.cover,),
      );

  }
}