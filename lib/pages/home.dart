import 'package:flutter/material.dart';
import 'package:sunnah/widgets/percent.dart';
import 'package:sunnah/widgets/task_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sünnet Rehberi"), centerTitle: true),
      body: SafeArea(
        child: Column(
          children: [
            const Percent(),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(20),
                itemCount: 15,
                separatorBuilder: (context, index) => const SizedBox(height: 15),
                itemBuilder: (context, index) {
                  return const TaskItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
