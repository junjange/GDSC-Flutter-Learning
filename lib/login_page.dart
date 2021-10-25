import 'package:flutter/material.dart';

<<<<<<< Updated upstream

int cnt = 0;
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
=======
class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}
>>>>>>> Stashed changes

class _LoginPage extends State<LoginPage> {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
<<<<<<< Updated upstream
      backgroundColor: Colors.blue[200],
      appBar: AppBar(title: Text("hi")),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // 중앙 정렬

        children: <Widget>[
          Text("버튼을 누른 횟수"),
          Text("$cnt", style: Theme.of(context).textTheme.display1,),
          Row(mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget> [FloatingActionButton(child: Icon(Icons.add),onPressed: (){
            setState(() {
              
              cnt++;
              print("$cnt");
            });

          }),
          Padding(padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),),
          FloatingActionButton(child: Icon(Icons.remove),onPressed: (){
            setState(() {
            
              
              print("$cnt");
              if (cnt >= 1){
                  cnt--;
              }
            });

          }),
          ]),
          ],
         
      
      )
    ),
    // floatingActionButton: FloatingActionButton(
    //   child: Icon(Icons.add),
    //   onPressed: (){
    //     setState(() { // 
    //     cnt++;
    //     print("$cnt");
    //     });
        
    //   },
    // ),
    

    
  );
}
=======
        appBar: AppBar(
          title: Text("Log in"),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
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
                              decoration:
                                  InputDecoration(labelText: 'Enter"dice"'),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextField(
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
                                    onPressed: () {}))
                          ],
                        ),
                      )))
            ],
          ),
        ));
  }
>>>>>>> Stashed changes
}
