import 'package:book_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();

    void validate() {
      if (formkey.currentState!.validate()) {
        print("validated");
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      } else {
        print("not validate");
      }
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Book App"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 16,
                ),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Username", labelText: "Enter Username"),
                        validator: (Value) {
                          if (Value!.isEmpty) {
                            return "username Cannot be empty";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "Enter Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password cannot be empty";
                          } else if (value.length < 8) {
                            return "password length must be greater then 8";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: validate,
                        child: Text(
                          "Login",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
