import 'package:flutter/material.dart';

class MechitPage extends StatefulWidget {
  const MechitPage({super.key});

  @override
  State<MechitPage> createState() => _MechitPageState();
}

class _MechitPageState extends State<MechitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Мечеттерди издөө")),
    );
  }
}
