import 'package:acyuta/pages/upload.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final Uri _url = Uri.parse('https://farmer.gov.in/');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

const titleStyle =
    TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: 20);

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 154, 231, 194),
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "अच्युता",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height * 0.3,
              width: double.infinity,
              child: Card(
                color: const Color.fromARGB(255, 174, 248, 212),
                child: Image.asset(
                  "assets/acyuta1.jpg",
                  fit: BoxFit.fill,
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
                    builder: (context) => const Upload(),
                  ),
                );
              },
              child: SizedBox(
                height: size.height * 0.1,
                width: double.infinity,
                child: const Card(
                  color: Color.fromARGB(255, 174, 248, 212),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Your Personalized Crop Sow Prediction",
                        style: titleStyle,
                      ),
                      Text(
                        "आपकी व्यक्तिगत फसल बोने की भविष्यवाणी",
                        style: titleStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                _launchUrl();
              },
              child: SizedBox(
                height: size.height * 0.1,
                width: double.infinity,
                child: const Card(
                  color: Color.fromARGB(255, 174, 248, 212),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Find Government Schemes",
                        style: titleStyle,
                      ),
                      Text(
                        "सरकारी योजनाएं खोजें",
                        style: titleStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height * 0.1,
              width: double.infinity,
              child: const Card(
                color: Color.fromARGB(255, 174, 248, 212),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Check Weather Report",
                      style: titleStyle,
                    ),
                    Text(
                      "मौसम रिपोर्ट की जाँच करें",
                      style: titleStyle,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height * 0.1,
              width: double.infinity,
              child: const Card(
                color: Color.fromARGB(255, 174, 248, 212),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "How To Use This App",
                      style: titleStyle,
                    ),
                    Text(
                      "इस ऐप का उपयोग कैसे करें",
                      style: titleStyle,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height * 0.1,
              width: double.infinity,
              child: const Card(
                color: Color.fromARGB(255, 174, 248, 212),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Testimonials",
                      style: titleStyle,
                    ),
                    Text(
                      "प्रशंसापत्र",
                      style: titleStyle,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
