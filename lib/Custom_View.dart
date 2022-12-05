import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCustomerView extends StatelessWidget {
  const MyCustomerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
      slivers: [
        _buildSliverAppBar,
        _buildSliverList,
      ],
    ),
    );
  }

  get _buildSliverAppBar{
    return SliverAppBar(
          leading: Icon(Icons.face),
          title: Text("Hello"),
          expandedHeight: 100,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
            IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app)),
        ],
        //pinned: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.blue,Colors.red],
            )
          ),
        ),
      );
  }

  get _buildSliverList{
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return _buildItem(MovieList[index]);
      },
      childCount: MovieList.length,
    ),
    );
  }
   _buildItem(Movie item){
    return Card(
      child: ListTile(
        title: Text(item.title),
        subtitle: Text(item.body),
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