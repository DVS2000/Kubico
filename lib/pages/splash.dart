import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kubico/src/pages/login.dart';
import 'package:kubico/src/tabs/carousel-tab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kubico/src/widgets/tela_horizontal.dart';
import 'package:kubico/src/widgets/tela_vertical.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  TabController _tabController;
  Timer _timer;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        if (_tabController.index == 2) {
          _tabController.animateTo(0);
        } else {
          _tabController.animateTo(_tabController.index + 1);
        }
        print("Dorivaldo");
      });
    });
    _tabController.addListener(() => teste());
    super.initState();
  }

  void teste() {
    setState(() {});
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
   return MediaQuery.of(context).orientation == Orientation.portrait ? TelaVertical(_tabController) : TelaHorizontal(_tabController);
 
  }
}
