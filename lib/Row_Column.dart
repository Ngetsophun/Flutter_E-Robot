import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RowColumnPage extends StatefulWidget {
  const RowColumnPage({Key? key}) : super(key: key);

  @override
  State<RowColumnPage> createState() => _RowColumnPageState();
}

class _RowColumnPageState extends State<RowColumnPage> {
  late double _screenWith;
  // String image =
  //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJDqBszV_zvs_4ivjdxakIem3jRv9NRl5E8rdXqYYgZoosS8VVi6TVLpmZeqgbdw7qlc&usqp=CAU";

  @override
  Widget build(BuildContext context) {
    _screenWith = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
      bottomNavigationBar: _buildNavigation,
    );
  }

  get _buildAppBar => AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Text("Latest"),
              onTap: () {
                print("click Latest");
              },
            ),
            InkWell(
              child: Text("Popular"),
              onTap: () {
                print("click popular");
              },
            ),
            Text("My List"),
          ],
        ),
      );
  get _buildBody {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildComplexBox(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJDqBszV_zvs_4ivjdxakIem3jRv9NRl5E8rdXqYYgZoosS8VVi6TVLpmZeqgbdw7qlc&usqp=CAU",
                "Avata",
                "Avatar is a 2009 American epic science fiction film directed, written, produced, and co-edited by James Cameron and starring Sam Worthington, Zoe Saldana"
            ),
            _buildComplexBox(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJDqBszV_zvs_4ivjdxakIem3jRv9NRl5E8rdXqYYgZoosS8VVi6TVLpmZeqgbdw7qlc&usqp=CAU",
                "Avata",
                "Avatar is a 2009 American epic science fiction film directed, written, produced, and co-edited by James Cameron and starring Sam Worthington, Zoe Saldana"
            ),
            _buildComplexBox(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJDqBszV_zvs_4ivjdxakIem3jRv9NRl5E8rdXqYYgZoosS8VVi6TVLpmZeqgbdw7qlc&usqp=CAU",
                "Avata",
                "Avatar is a 2009 American epic science fiction film directed, written, produced, and co-edited by James Cameron and starring Sam Worthington, Zoe Saldana"
            ),
            _buildComplexBox(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJDqBszV_zvs_4ivjdxakIem3jRv9NRl5E8rdXqYYgZoosS8VVi6TVLpmZeqgbdw7qlc&usqp=CAU",
                "Avata",
                "Avatar is a 2009 American epic science fiction film directed, written, produced, and co-edited by James Cameron and starring Sam Worthington, Zoe Saldana"
            ),
            _buildComplexBox(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJDqBszV_zvs_4ivjdxakIem3jRv9NRl5E8rdXqYYgZoosS8VVi6TVLpmZeqgbdw7qlc&usqp=CAU",
                "Avata",
                "Avatar is a 2009 American epic science fiction film directed, written, produced, and co-edited by James Cameron and starring Sam Worthington, Zoe Saldana"
            ),
            _buildComplexBox(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJDqBszV_zvs_4ivjdxakIem3jRv9NRl5E8rdXqYYgZoosS8VVi6TVLpmZeqgbdw7qlc&usqp=CAU",
                "Avata",
                "Avatar is a 2009 American epic science fiction film directed, written, produced, and co-edited by James Cameron and starring Sam Worthington, Zoe Saldana"
            ),
            _buildComplexBox(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJDqBszV_zvs_4ivjdxakIem3jRv9NRl5E8rdXqYYgZoosS8VVi6TVLpmZeqgbdw7qlc&usqp=CAU",
                "Avata",
                "Avatar is a 2009 American epic science fiction film directed, written, produced, and co-edited by James Cameron and starring Sam Worthington, Zoe Saldana"
            ),
            _buildComplexBox(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJDqBszV_zvs_4ivjdxakIem3jRv9NRl5E8rdXqYYgZoosS8VVi6TVLpmZeqgbdw7qlc&usqp=CAU",
                "Avata",
                "Avatar is a 2009 American epic science fiction film directed, written, produced, and co-edited by James Cameron and starring Sam Worthington, Zoe Saldana"
            ),
          ],
        ),
      ),
    );
  }

  _buildComplexBox(String img, String title, String body) {
    return Container(
      //margin: EdgeInsets.all(20),
      height: 100,
      width: _screenWith,
      color: Colors.indigo.withOpacity(0.2),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          _buildCircleImg(img),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20),
              ),
              Container(
                height: 50,
                width: 500,
                child: Text(
                  body,
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }

  _buildCircleImg(String img) {
    return Container(
      height: 120,
      width: 120,
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(img),
              fit: BoxFit.cover,
            )),
      ),
    );
  }

  get _buildNavigation => Container(
        height: 50,
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.play_circle),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.group),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.people),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
          ],
        ),
      );
}
