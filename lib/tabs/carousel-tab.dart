import 'package:flutter/material.dart';

class CarouselTab extends StatelessWidget {
  final String img;
  CarouselTab(this.img);
  
  @override
  Widget build(BuildContext context) {
   
    return Stack(
      children: <Widget>[
        Image.asset(img ?? 'assets/imgs/pexels-photo-2631746.jpg',
             fit: BoxFit.cover,
             height: double.infinity,
             width: double.infinity,),
        Container(
          
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black.withOpacity(.35),
            Colors.black.withOpacity(.75),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Stack(
            children: <Widget>[
              Positioned(
               bottom: 50,
               right: 10,
               left: 10,
                child: Container(
                 
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "\"Dorivaldo dos Santos, programador junior na empresa Digital Factory, lá é fixe calmo e relaxante\"",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20.0,
                left: 0,
                right: 0,
                child: Column(
                  children: <Widget>[
                    Text(
                      "COFFEE BEANS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "MONTHLY SUBSCRIPTION",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        )
      ],
    );
  }
}
