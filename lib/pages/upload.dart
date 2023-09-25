import 'package:acyuta/pages/manualinput.dart';
import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

const titleStyle =
    TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: 20);

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 154, 231, 194),
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "अच्युता",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset("assets/uploadimage.png"),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Upload Your Soil Health Card",
            style: titleStyle,
          ),
          const Text(
            "अपना मृदा स्वास्थ्य कार्ड अपलोड करें",
            style: titleStyle,
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ManualInput(),
                ),
              );
            },
            child: const Card(
              elevation: 10,
              color: Colors.transparent,
              child: Column(
                children: [
                  Text(
                    "Upload Soil Health Card Manually ",
                    style: titleStyle,
                  ),
                  Text(
                    "अपना मृदा स्वास्थ्य कार्ड खुद लिखकर अपलोड करें",
                    style: titleStyle,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
