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
                padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
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
