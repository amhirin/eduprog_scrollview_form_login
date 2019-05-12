import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Eduprog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Eduporg'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200,
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                          )
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                          )
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      style: TextStyle(fontSize: 20),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: (){
                  print("Login process");
                },
                child: Container(
                  //width: 100.0,
                  height: 40,
                  decoration: new BoxDecoration(
                    color: Colors.deepOrange,
                    border: Border.all(color: Colors.deepOrange, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(child: Text('Login', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
                ),
              )
            ],
          ),
        )
      )
    );
  }
}
