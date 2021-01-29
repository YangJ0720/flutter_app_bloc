import 'package:flutter/material.dart';
import 'package:flutter_app_bloc/about.dart';
import 'package:flutter_app_bloc/login.dart';

import 'bloc/about_bloc.dart';
import 'bloc/engine/bloc_engine.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                IconButton(
                  icon: Icon(Icons.login),
                  onPressed: () {
                    var route = MaterialPageRoute(builder: (_) => Login());
                    Navigator.push(context, route);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.error),
                  onPressed: () {
                    var route = MaterialPageRoute(builder: (_) => About());
                    Navigator.push(context, route);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
