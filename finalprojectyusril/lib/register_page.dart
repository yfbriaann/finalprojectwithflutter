import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:finalprojectyusril/style.dart';

import 'login_page.dart';

class registerpage extends StatelessWidget {
  const registerpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color.fromRGBO(232, 236, 244, 1))),
              height: 41,
              width: 41,
              margin: EdgeInsets.only(left: 22, top: 56, right: 312),
              child: Container(
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(),
              child: Image.asset(
                'assets/images/literallyauthentic_logo.png',
                width: 190,
                height: 190,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 18, top: 18, bottom: 19),
              height: 56,
              margin: EdgeInsets.only(top: 35, right: 22, left: 22),
              child: Text(
                'Username',
                style: TextStyle(color: Color.fromRGBO(131, 145, 161, 1)),
              ),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 248, 249, 1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromRGBO(232, 236, 244, 1))),
            ),
            Container(
              padding: EdgeInsets.only(left: 18, top: 18, bottom: 19),
              height: 56,
              margin: EdgeInsets.only(top: 12, right: 22, left: 22),
              child: Text(
                'Email',
                style: TextStyle(color: Color.fromRGBO(131, 145, 161, 1)),
              ),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 248, 249, 1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromRGBO(232, 236, 244, 1))),
            ),
            Container(
              padding: EdgeInsets.only(left: 18, top: 18, bottom: 19),
              height: 56,
              margin: EdgeInsets.only(top: 12, right: 22, left: 22),
              child: Text(
                'Password',
                style: TextStyle(color: Color.fromRGBO(131, 145, 161, 1)),
              ),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 248, 249, 1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromRGBO(232, 236, 244, 1))),
            ),
            Container(
              padding: EdgeInsets.only(left: 18, top: 18, bottom: 19),
              height: 56,
              margin: EdgeInsets.only(top: 12, right: 22, left: 22),
              child: Text(
                'Confirm Password',
                style: TextStyle(color: Color.fromRGBO(131, 145, 161, 1)),
              ),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 248, 249, 1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromRGBO(232, 236, 244, 1))),
            ),
            Container(
              padding: EdgeInsets.only(right: 22, left: 22),
              height: 56,
              margin: EdgeInsets.only(bottom: 35, top: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: Color.fromRGBO(255, 59, 47, 1),
                ),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context){
                        return loginpage();
                      }));},
                child: Text(
                  'Register',
                  style: LoginText,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 22),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 155),
                    child: Text('Or Register with'),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Color.fromRGBO(232, 236, 244, 1))),
                    height: 56,
                    width: 85,
                    margin: EdgeInsets.only(
                      left: 50,
                    ),
                    child: Container(
                      child: Image.asset(
                        'assets/images/facebook_logo.png',
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Color.fromRGBO(232, 236, 244, 1))),
                    height: 56,
                    width: 85,
                    margin: EdgeInsets.only(
                      left: 22,
                    ),
                    child: Container(
                      child: Image.asset(
                        'assets/images/google_logo.png',
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Color.fromRGBO(232, 236, 244, 1))),
                    height: 56,
                    width: 85,
                    margin: EdgeInsets.only(left: 22, right: 22),
                    child: Container(
                      child: Image.asset(
                        'assets/images/apple_logo.png',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 54, left: 61, right: 60),
                child: Row(
                  children: <Widget>[
                    Text("Already Have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          ' Login Now',
                          style:
                              TextStyle(color: Color.fromARGB(255, 86, 241, 241)),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}