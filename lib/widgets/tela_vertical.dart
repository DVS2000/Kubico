import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kubico/src/pages/login.dart';
import 'package:kubico/src/tabs/carousel-tab.dart';

class TelaVertical extends StatefulWidget {
  final TabController _tabController;
  TelaVertical(this._tabController);
  @override
  _TelaVerticalState createState() => _TelaVerticalState(_tabController);
}

class _TelaVerticalState extends State<TelaVertical> {
  final TabController _tabController;
  _TelaVerticalState(this._tabController);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:
              const EdgeInsets.only(left: 12, right: 12, top: 30, bottom: 10),
          child: Column(
            children: <Widget>[
              Container(
                width: size.width,
                padding: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                      )
                    ]),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: size.height / 1.3,
                          child: TabBarView(
                            controller: _tabController,
                            children: <Widget>[
                              CarouselTab(
                                  'assets/imgs/pexels-photo-2462015.jpg'),
                              CarouselTab(
                                  'assets/imgs/pexels-photo-106399.jpg'),
                              CarouselTab(
                                  'assets/imgs/pexels-photo-2499969.jpg')
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 400),
                                  height: 10,
                                  width: _tabController.index == 0 ? 40 : 20,
                                  decoration: BoxDecoration(
                                      color: _tabController.index == 0
                                          ? Colors.white
                                          : Colors.white54,
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 400),
                                  height: 10,
                                  width: _tabController.index == 1 ? 40 : 20,
                                  decoration: BoxDecoration(
                                      color: _tabController.index == 1
                                          ? Colors.white
                                          : Colors.white54,
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 400),
                                  height: 10,
                                  width: _tabController.index == 2 ? 40 : 20,
                                  decoration: BoxDecoration(
                                      color: _tabController.index == 2
                                          ? Colors.white
                                          : Colors.white54,
                                      borderRadius: BorderRadius.circular(30)),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(

                  children: <Widget>[
                    
                    Text(
                      "ENTRAR PARA CONTINUAR",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                   Divider()
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Colors.green)),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Colors.green)),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.google,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              
              Spacer(), 
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Login();
                })),
                child: Container(
                  width: 170,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          width: 1,
                          style: BorderStyle.solid,
                          color: Colors.green)),
                  child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.phone_android,
                        color: Colors.green,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "Telefone".toUpperCase(),
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}