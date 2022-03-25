import 'package:flutter/material.dart';
import 'package:macgyver/src/home_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _controllerLogin = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, BoxConstraints constraints) => Form(
          key: _formKey,
          child: Container(
            color: Colors.white,
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            padding:
                const EdgeInsets.only(top: 60, left: 16, right: 16, bottom: 16),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    height: 120,
                    width: 120,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Magayver",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextField(
                    controller: _controllerLogin,
                    autofocus: false,
                    style: const TextStyle(fontSize: 15.0, color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Email',
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 6.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade100),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    controller: _controllerLogin,
                    autofocus: false,
                    style: const TextStyle(fontSize: 15.0, color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Senha',
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 6.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade100),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: Text("ACESSAR"),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: const Color.fromRGBO(19, 226, 59, 10),
                      minimumSize: Size(150, 50),
                      shadowColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Não tem conta ? Toque aqui para criar uma agora",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
