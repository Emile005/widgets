import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final bool isBunyod;
  const SecondPage({super.key, required this.isBunyod});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var text = const Text("UNKNOWN");

  @override
  void initState() {
    super.initState();
    if (widget.isBunyod) {
      text = const Text("SALOM BUNYOD");
    } else {
      text = const Text("SALOM G9");
    }
    debugPrint('IKKINCHI PAGE ISHLADI!!! 2');
  }
  @override
  void didChangeDependencies() {
    debugPrint('DID CHANGE DEPENDECIES 2');
    super.didChangeDependencies();
  }
  @override
  void didUpdateWidget(covariant SecondPage oldWidget) {
    if (oldWidget.isBunyod == widget.isBunyod) {
      text = const Text("VAXOBJON");
      debugPrint('YANGI');
    }
    super.didUpdateWidget(oldWidget);
  }
  @override
  Widget build(BuildContext context) {
    debugPrint('SETSTATE');
    return Scaffold(
      appBar: AppBar(
        title: const Text("SECOND PAGE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text,
            const SizedBox(height: 10),
            IconButton(
              onPressed: () {
                setState(() {
                  text = const Text(
                    "ROLTON",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  );
                });
              },
              icon: const Icon(Icons.ramen_dining),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void deactivate() {
    debugPrint('DEACTIVE SVETTI OCHIRDIK');
    super.deactivate();
  }

  @override
  void dispose() {
    debugPrint('DISPOSE XAYRRRRR!');

    super.dispose();
  }
}