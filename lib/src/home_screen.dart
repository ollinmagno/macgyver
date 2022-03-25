import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/logo.png",
                height: 100,
                width: 100,
              ),
              const SizedBox(
                height: 85,
              ),
              const Text('O que precisa genial inventor?',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 26,
                      color: Color.fromRGBO(19, 226, 59, 10))),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(36)),
                  child: TextFormField(
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintStyle: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                      hintText: 'Digite o que você busca',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    child: Text("Buscar"),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: const Color.fromRGBO(19, 226, 59, 10),
                      minimumSize: Size(150, 50),
                      shadowColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    onPressed: () {},
                  )),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Busca por categoria:',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 10),
                child: const Divider(
                  color: Colors.black,
                  height: 16,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/motor.png",
                          height: 76,
                          width: 76,
                        ),
                        Image.asset(
                          "assets/images/circuito.png",
                          height: 76,
                          width: 76,
                        ),
                        Image.asset(
                          "assets/images/fio.png",
                          height: 76,
                          width: 76,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/resistor.png",
                          height: 76,
                          width: 76,
                        ),
                        Image.asset(
                          "assets/images/resistor.png",
                          height: 76,
                          width: 76,
                        ),
                        Image.asset(
                          "assets/images/resistor.png",
                          height: 76,
                          width: 76,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}

Widget _createIconAndDescription(String imagePath, String imageDescription) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        imagePath,
        height: 76,
        width: 76,
      ),
      const SizedBox(
        height: 12,
      ),
      Text(imageDescription),
    ],
  );
}
