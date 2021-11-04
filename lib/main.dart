import 'package:flutter/material.dart';
import 'package:instagrem_clon/login_page.dart';
import 'package:instagrem_clon/root_page.dart';

void main()  => runApp(MyApp()); // 프로그램을 실행할 때 MyApp 부터 실행하겠어!

// StatelessWidget은 변화지 않는 화면을 작업할 때 사용.
// 변화는 작업을 하고싶을 경우에는 StatefulWidget을 사용.
class MyApp extends StatelessWidget {

  // MaterialApp = 앱으로서 기능을 할 수 있도록 도와주는 뼈대

  @override
  Widget build(BuildContext context) {

    // return MaterialApp() -> Material 디자인 테마를 사용 
    return MaterialApp(
      title: '자기소개', // 앱 이름
      debugShowCheckedModeBanner: false, // 타이틀 바 우측 띠 제거

      theme: ThemeData(primarySwatch: Colors.green), //  앱의 기본적은 테마를 지정하는 코드

      home: MyCard(), // 앱이 실행될 때 표시할 화면의 함수를 호출

    );
  }
}

// 앱이 실행 될때 표시할 화면의 함수
class MyCard extends StatelessWidget {

  // scaffold = 구성된 앱에서 디자인적인 부분을 도와주는 뼈대

  // 화면 구성
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.green[800],
      // appBar에 AppBar 위젯을 가져온다.
      appBar: AppBar(
        title: Text("자기 소개"),
        centerTitle: true, // appBar 가운데 정렬
        
        backgroundColor: Colors.green[700],
        elevation: 0.0,

        // actions은 타이틀 바 우측에 들어 갈 이벤트..?
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart), // 아이콘 이미지
            
            // 버튼 이벤트
            onPressed: () {
              // RootPage로 이동
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => RootPage()));
              print("shopping button is clicked");
            },
          ),

          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => LoginPage()));
              print("serach button is clicked");
            },
          ),
        ],
      ),

      // 좌측 사이드 메뉴 구현
      drawer: Drawer( // Drawer 네비게이션 위젯
        child: ListView( // 하나의 자식을 ListView 위젯으로 받는다. 많은 양의 listile 이 있을 수 있으므로!
          padding: EdgeInsets.zero, // 사이드 메뉴를 꽉차게 구현하기 위해..
          children: <Widget>[
            UserAccountsDrawerHeader( // accountName, accountEmail, currentAccountPicture이 포함된 UserAccountsDrawerHeader을 사용
              // 이미지 추가
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/junjange.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/ma.png'),
                  backgroundColor: Colors.white,
                ),
              ],

              // accountName, accountEmail, currentAccountPicture 입력
              accountName: Text('Jo junjang'),
              accountEmail: Text('wnswkd486@gmail.com'),
              onDetailsPressed: () {
                print("arrow is clicked");
              },

              // 좌측 메뉴바의 상단 박스를 디자인
              decoration: BoxDecoration(
                  color: Colors.green[700], // 색

                  // 하단 좌측과 우측에 윤곽선 표현
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0))),
            ),

            // 리스트 뷰에 넣어 줄 메뉴
            ListTile(
              leading: Icon( // 외쪽에 표시할 아이콘
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'), // 이름
              onTap: () { // 클릭 이벤트
                print('Home is clicked');
              },
              trailing: Icon(Icons.add), // 우측에 표시할 아이콘
            ),

            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: () {
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),

            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            )
          ],
        ),
      ),

      // 앱의 body 부분 
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/junjange.png'),
                radius: 80.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text("Name",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Jo junjang",
              style: TextStyle(
                  color: Colors.white, letterSpacing: 2.0, fontSize: 18.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text("Power Level",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "23LV",
              style: TextStyle(
                  color: Colors.white, letterSpacing: 2.0, fontSize: 18.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Skils: python, kotlin, java, aws, flutter ...",
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Experience: GDSC Core Member ...",
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Project: 행운복권, 캠핑투어 ...",
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ma.png'),
                radius: 40.0,

              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            MySnackBar(),
          ],
        ),
      ),
    );
  }
}

class MySnackBar extends StatefulWidget {
  @override
  _MySnackBarState createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show me'),
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Hi",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white)),
              backgroundColor: Colors.teal,
              duration: Duration(milliseconds: 1000),
            ),
          );
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Go to the Home page"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
