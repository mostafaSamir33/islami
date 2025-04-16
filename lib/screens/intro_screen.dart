import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  static final String routeName = '/intro screen';

  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

// Future<String> loadAsset() async {
//   return await rootBundle.loadString('assets/files/1.txt');
// }
//
//
// Future<String?> _read() async {
//   String? text;
//   try {
//     final Directory directory = await getApplicationDocumentsDirectory();
//     final File file = File('${directory.path}/assets/files/1.txt');
//     text = await file.readAsString();
//   } catch (e) {
//     print("Couldn't read file");
//   }
//   return text;
// }
