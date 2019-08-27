import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kubico/src/pages/home.dart';
import 'package:kubico/src/widgets/login.dart';
import 'package:kubico/src/widgets/register-form.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin{

  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    super.initState();
  }
  final styleIndicator = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );

  bool status = true;

  @override
  Widget build(BuildContext context) {
    _animationController.forward();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height / 2,
              width: size.width,
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.only(bottom: 2),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3,)]),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                child: Stack(
                  children: <Widget>[
                    Image.asset('assets/imgs/pexels-photo-2631746.jpg',
                        height: size.height / 2, fit: BoxFit.cover),
                    Container(
                      height: size.height / 2,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(.75),
                          ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 190,
                              padding: EdgeInsets.only(right: 15),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: (){setState(() {
                                          _animationController.reset();
                                         status = true; 
                                        });},
                                        child: Text("Entrar".toUpperCase(),
                                            style: styleIndicator),
                                      ),
                                      InkWell(
                                        onTap: () {setState(() {
                                          _animationController.reset();
                                         status = false; 
                                        });},
                                        child: Text(
                                          "Registar".toUpperCase(),
                                          style: styleIndicator,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  AnimatedAlign(
                                    duration: Duration(milliseconds: 400),
                                    alignment: status ? Alignment.centerLeft : Alignment.centerRight,
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 400),
                                      width: status ? 50 : 60,
                                      height: 1.5,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 40,),
            FadeTransition(
              opacity: _animation,
              child: status ? LoginForm() : RegisterForm(),
            )
        
          ],
        ),
      ),
     bottomNavigationBar: Container(
       padding: EdgeInsets.symmetric(horizontal: 12, vertical: 1),
        height: 80,
       // color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 120,
             // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.longArrowAltLeft,
                  ),
                  Text(
                    "Social Login"
                  )
                ],
              ),
            ),
            FloatingActionButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home())),
              backgroundColor: Colors.green,
              child: Icon(
                FontAwesomeIcons.longArrowAltRight,
                size: 27,
              ),
            )
          ],
        ),
      ) ,
      
    );
  }
}
