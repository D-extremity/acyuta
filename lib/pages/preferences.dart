import 'package:acyuta/card/crop.dart';
import 'package:acyuta/pages/manualinput.dart';
import 'package:flutter/material.dart';

class Preferences extends StatefulWidget {
  const Preferences({super.key});

  @override
  State<Preferences> createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
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
      body: ListView.builder( itemCount: resultList.length,
      itemBuilder: (context, index) {
        return CardCrop(cropName: resultList[index])
        ;
      }),
    );
  }
}
