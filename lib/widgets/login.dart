import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
                    SizedBox(height: 50,),
                    Text(
                      "ESQUECEU A SENHA ?",
                      style: TextStyle(
                        fontWeight: FontWeight.w300
                      ),
                    )
                  ],
                )
                )
              );
  }
}