import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _Hide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }

  get _buildBody => Container(
        alignment: Alignment.center,
        child: _buildPassword,
      );
  get _buildPassword => Container(
        height: 70,
        decoration: BoxDecoration(
            color: Colors.pink.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.all(40),
        padding: EdgeInsets.all(20),
        child: TextField(
          style: TextStyle(color: Colors.white),
          autocorrect: false,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: "Enter Password",
            prefixIcon: Icon(
              Icons.key,
              color: Colors.white,
            ),
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(
                _Hide ? Icons.visibility : Icons.visibility_off,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _Hide = !_Hide;
                });
              },
            ),
          ),
          obscureText: _Hide,
        ),
      );

  get _buildTexField => Container(
        height: 70,
        decoration: BoxDecoration(
            color: Colors.pink.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.all(40),
        padding: EdgeInsets.all(20),
        child: TextField(
          style: TextStyle(color: Colors.white),
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "Enter Email",
            prefixIcon: Icon(
              Icons.email,
              color: Colors.white,
            ),
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(
                Icons.send,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ),
      );

  get _buildButtom => Container(
        width: 200,
        height: 50,
        // child: RaisedButton(
        //   onPressed: () {},
        //   color: Colors.pink,
        //   shape:
        //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        //   child: Text(
        //     "Login",
        //     style: TextStyle(color: Colors.white),
        //   ),
        // ),
      );
}
