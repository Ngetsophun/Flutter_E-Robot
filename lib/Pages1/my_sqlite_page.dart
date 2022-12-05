import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class MySqlitePage extends StatefulWidget {
  const MySqlitePage({Key? key}) : super(key: key);

  @override
  State<MySqlitePage> createState() => _MySqlitePageState();
}

class _MySqlitePageState extends State<MySqlitePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
    );
  }
  get _buildAppBar{
    return AppBar(

    );
  }
  get _buildBody{
    return Container(

    );
  }
}