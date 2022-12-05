import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tranning_erobot/Multi_Page/GroupScreen.dart';
import 'package:tranning_erobot/Multi_Page/home_screen.dart';

class MultiPage extends StatefulWidget {
  const MultiPage({Key? key}) : super(key: key);

  @override
  State<MultiPage> createState() => _MultiPageState();
}

class _MultiPageState extends State<MultiPage> {
  late double _widthOfScreen, _heightOfScreen;

  List<Widget> _screenList = [];
  void initState() {
    super.initState();

    _screenList.add(HomeScreen());
    _screenList.add(GroupScreen());
    _screenList.add(
      Container(
        color: Colors.amber,
      ),
    );
    _screenList.add(
      Container(
        color: Colors.indigo,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _widthOfScreen = MediaQuery.of(context).size.width;
    _heightOfScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar,
          _buildSliverBody,
        ],
      ),
      bottomNavigationBar: _buildBottom,
    );
  }

  get _buildSliverBody {
    return SliverToBoxAdapter(
      child: Container(
        height: _heightOfScreen,
        width: _widthOfScreen,
        child: _screenList[_currentIndex],
      ),
    );
  }

  int _currentIndex = 0;

  get _buildBottom {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.pink,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
            ),
            label: 'Group'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.play_arrow_sharp
            ), 
            label: 'Play'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
            ),
            label: 'More'),
      ],
    );
  }
  get _buildSliverAppBar {
    return SliverAppBar(
      title: Text("Multiple Page"),
    );
  }
}
