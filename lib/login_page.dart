import 'package:flutter/material.dart';
import 'package:instagrem_clon/dice.dart';
import 'dice.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 20)),
              Center(
                child: Image(
                  image: AssetImage('image/football.gif'),
                  width: 300.0,
                  height: 300.0,
                ),
              ),
              Form(
                  child: Theme(
                      data: ThemeData(
                          primaryColor: Colors.teal,
                          inputDecorationTheme: InputDecorationTheme(
                              labelStyle: TextStyle(
                                  color: Colors.teal, fontSize: 15.0))),
                      child: Container(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              controller: controller,
                              decoration:
                                  InputDecoration(labelText: 'Enter"dice"'),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextField(
                              controller: controller2,
                              decoration:
                                  InputDecoration(labelText: 'Enter Passwrod'),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            ButtonTheme(
                                minWidth: 100.0,
                                height: 50.0,
                                child: RaisedButton(
                                    color: Colors.orangeAccent,
                                    child: Icon(Icons.arrow_forward,
                                        color: Colors.white, size: 35.0),
                                    onPressed: () {
                                      if (controller.text == "dice" &&
                                          controller2.text == "1234") {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        Dice()));
                                      } else if (controller.text == "dice" &&
                                          controller2.text != "1234") {
                                        showSnackerBar2(context);
                                      } else if (controller.text != "dice" &&
                                          controller2.text == "1234") {
                                        showSnackerBar3(context);
                                      } else {
                                        showSnackerBar(context);
                                      }
                                    }))
                          ],
                        ),
                      )))
            ],
          ),
        );
      }),
    );
  }
}

void showSnackerBar(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text("로그인 정보를 다시 확인하세요.", textAlign: TextAlign.center),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}

void showSnackerBar2(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text("비밀번호가 일치하지 않습니다.", textAlign: TextAlign.center),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}

void showSnackerBar3(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text("dice의 철자를 확인하세요.", textAlign: TextAlign.center),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}
