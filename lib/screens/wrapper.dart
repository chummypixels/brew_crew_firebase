import 'package:coffee_brew/models/user.dart';
import 'package:coffee_brew/screens/authenticate/authenticate.dart';
import 'package:coffee_brew/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<OurUser>(context);
    //return either home or authenticate
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
