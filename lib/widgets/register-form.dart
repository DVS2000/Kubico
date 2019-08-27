import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
    
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                              fontWeight: FontWeight.w300
                            ),
                            decoration: InputDecoration(
                              hintText: 'Nome'
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40,),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone_android,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                              fontWeight: FontWeight.w300
                            ),
                            decoration: InputDecoration(
                              hintText: 'Correio electronico'
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40,),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.lock_open,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                              fontWeight: FontWeight.w300
                            ),
                            decoration: InputDecoration(
                              hintText: 'Palavra-passe'
                            ),
                          ),
                        )
                      ],
                    ),
                    
                    
                  ],
                )
                )
              );
  }
}