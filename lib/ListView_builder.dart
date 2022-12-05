import 'package:flutter/material.dart';
import 'package:tranning_erobot/ButtomAppBar.dart';
import 'package:tranning_erobot/Detail_page.dart';

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("ListView "),
      ),
      body: _buildBody,
      drawer: _buildDrawer,
      bottomNavigationBar: _buildBotom,
    );
  }

  get _buildBotom => BottomAppBar(
        color: Colors.amber[50],
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: Icon(Icons.play_circle)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.group)),
          IconButton(
              onPressed: () {
                //_scaffoldKey.currentState.openEndDrawer();
              },
              icon: Icon(Icons.more_horiz)),
        ]),
      );
  get _buildBody {
    return Container(
      child: _buildListView,
    );
  }

  get _buildListView {
    return ListView.builder(
        itemCount: MovieList.length,
        itemBuilder: (context, index) {
          return _buildItem(MovieList[index]);
        });
  }

  _buildItem(Movie item) {
    return InkWell(
      child: ListTile(
        leading: Image.network(item.img),
        title: Text(item.title),
        subtitle: Text(item.body),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPage(movie: item,),
        ));
      },
    );
  }

  get _buildDrawer {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJDqBszV_zvs_4ivjdxakIem3jRv9NRl5E8rdXqYYgZoosS8VVi6TVLpmZeqgbdw7qlc&usqp=CAU"),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            subtitle: Text("Home page"),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Contact"),
            subtitle: Text("Contact page"),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Product"),
            subtitle: Text("Product page"),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
            subtitle: Text("Setting page"),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}

class Movie {
  String img, title, body;
  Movie({required this.img, required this.title, required this.body});
}

List<Movie> MovieList = [
  Movie(
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJDqBszV_zvs_4ivjdxakIem3jRv9NRl5E8rdXqYYgZoosS8VVi6TVLpmZeqgbdw7qlc&usqp=CAU",
      title: "Advantor",
      body:
          "Avatar is a 2009 American epic science fiction film directed, written, produced, and co-edited by James Cameron and starring Sam Worthington, Zoe Saldana"),
  Movie(
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFWVXaNRI8dFo8cjXKbQ0K6dUCccs9-Z-g9A&usqp=CAU",
      title: "SpiderMan",
      body:
          "Spider-Man is a superhero appearing in American comic books published by Marvel Comics. Created by writer-editor Stan Lee and artist Steve Ditko, "),
];
