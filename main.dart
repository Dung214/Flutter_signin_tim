import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 110,
          backgroundColor: Colors.white,
          title: Text(
            "SIGN IN TO YOUR ACCOUNT",
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 20, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Username",
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      fillColor: Colors.white,
                      filled: true),
                  obscureText: true,
                  obscuringCharacter: "*",
                ),
              ),
              CheckboxListTile(
                title: Text(
                  "Keep me sign in",
                  style: TextStyle(color: Colors.grey),
                ),
                value: false,
                onChanged: (bool? value) {
                  value = true;
                },
                checkColor: Colors.deepPurpleAccent,
                controlAffinity: ListTileControlAffinity.leading,
              ),
              Container(
                height: 55,
                width: 430,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                margin: const EdgeInsets.only(top: 40, bottom: 40),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent),
                    onPressed: () {},
                    child: const Text(
                      "SIGN IN",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
              TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(),
                  child: const Text(
                    "Forgot your password?",
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
