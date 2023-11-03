import 'package:flutter/material.dart';
import 'package:state/secondpage.dart';

class StatePage extends StatefulWidget {
  const StatePage({super.key});

  @override
  State<StatefulWidget> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  @override
  void initState() {
    debugPrint('MEN ISHLADIM!!!');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("STATE PAGE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "asset/ads.jpg",
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 12),
            Image.network(
              "https://www.numerama.com/wp-content/uploads/2021/12/american-psycho.jpg",
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SecondPage(
                isBunyod: false,
              ),
            ),
          );
        },
      ),
    );
  }
}