import 'package:flutter/material.dart';
import 'package:sunnah/widgets/task_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sünnet Pusulası"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            TaskItem(),
          ],
        ),
      ),
    );
  }
}
