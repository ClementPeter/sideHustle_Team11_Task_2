import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Details App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'User Details App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title});
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      backgroundColor: Color(0xffF1F4F8),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 60.0,
                child: Image.asset('images/user.png'),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Team_11',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ),
            SizedBox(height: 30.0),
            Cards(text: 'Team_11@gmail.com', image: 'images/mail.png'),
            SizedBox(height: 15.0),
            Cards(text: 'Team_11_twitter_side', image: 'images/tweet.png'),
            SizedBox(height: 15.0),
            Cards(text: 'Team11_gitHub_side_', image: 'images/git.png'),
            SizedBox(height: 15.0),
            Cards(text: 'Team_11_linkedIn_01', image: 'images/link.png'),
            SizedBox(height: 15.0),
            Cards(text: 'Team_11_insta_side_', image: 'images/ig.png'),
          ],
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final String text;
  final String image;

  const Cards({Key key, this.text, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
        child: Row(
          children: [
            Image.asset(image),
            Expanded(child: SizedBox()),
            //Spacer(flex: 2),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        //color: Colors.green,
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18.0),
        ),
      ),
    );
  }
}
