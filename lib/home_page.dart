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
                  'https://media.licdn.com/dms/image/D4D35AQFwqy7W4UiakQ/profile-framedphoto-shrink_400_400/0/1673191675259?e=1681912800&v=beta&t=Mwjle9DlTklteKkeGRj6-uL6s49Y5k9l1MKCXfBF1KE',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Image.asset(
                  // Chemin local de ma photo  image
                  'assets/images/moi.jpg',
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