import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Login')),
      body: Container(
        child: Column(
          children: [
            TextField(),
            TextField(),
            FlatButton(onPressed: () {}, child: Text('登录')),
          ],
        ),
      ),
    );
  }
}
