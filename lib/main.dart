import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Mainpage()
    );
  }
}

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(26),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Welcome to Flutter",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          const SizedBox(
            height: 45.0,
          ),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "User Email",
              prefixIcon: Icon(Icons.mail, color: Colors.blue,)
            ),
          ),
          const SizedBox(
            height: 45.0,
          ),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                hintText: "User password",
                prefixIcon: Icon(Icons.password, color: Colors.blue,)
            ),
          ),

          const Text("Forget password", style: TextStyle(color: Colors.black),),

          const SizedBox(
            height: 50.0,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              onPressed: () {},
              child: Text("Signup"),
            ),
          )

        ],
      )
    );
  }
}




