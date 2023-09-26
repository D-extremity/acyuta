import 'package:flutter/material.dart';

class CardCrop extends StatelessWidget {
  final String cropName;
  const CardCrop({super.key, required this.cropName});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: size.height * 0.2,
        width: double.infinity,
        child:  Card(
          color: const Color.fromARGB(255, 141, 220, 144),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/urad.jpeg"),
              radius: 30,
            ),
            title: Text(
              cropName,
              style:const TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w500),
            ),
            subtitle:const Text(
              "Other useful information",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
