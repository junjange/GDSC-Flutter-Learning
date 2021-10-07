import 'package:flutter/material.dart';


int cnt = 0;
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
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
}
