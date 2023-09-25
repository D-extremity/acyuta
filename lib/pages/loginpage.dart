import 'package:acyuta/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 154, 231, 194),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Expanded(
              child: Card(
                color: const Color.fromARGB(255, 123, 229, 178),
                child: Expanded(
                  child: ListView(
                    children: [
                      Image.asset(
                        "assets/farmericon.png",
                        width: size.width * 0.7,
                        height: size.height * 0.3,
                      ),
                      TextField(
                        onTapOutside: (event) {
                          return FocusScope.of(context)
                              .requestFocus(FocusNode());
                        },
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15),
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          fillColor: Color.fromARGB(255, 92, 154, 124),
                          filled: true,
                          labelText: "Phone Number/Email/Username",
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            size: 40,
                            Icons.check_box,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      TextField(
                        onTapOutside: (event) {
                          return FocusScope.of(context)
                              .requestFocus(FocusNode());
                        },
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15),
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          fillColor: Color.fromARGB(255, 92, 154, 124),
                          filled: true,
                          labelText: "OTP/Password",
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        child: const Card(
                          color: Colors.green,
                          child: Center(
                            child: Text(
                              "आगे बढ़ें",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 40),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
