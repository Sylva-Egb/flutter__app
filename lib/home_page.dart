import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Image.network(
                  // URL de ma photo de profil depuis un reseau social linkedin
                  'https://www.facebook.com/photo/?fbid=1144067282690843&set=a.115044505593131',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Image.asset(
                  // Chemin local de ma photo  image
                  'assets/images/moi.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            // Mon nom au centre
            'EGBEWOLE Sylvanus',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
