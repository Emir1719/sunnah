import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sunnah/riverpods/global_riverpods.dart';
import 'package:sunnah/widgets/percent.dart';
import 'package:sunnah/widgets/task_item.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var taskList = ref.watch(displayAllTaskProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Sünnet Rehberi")),
      body: SafeArea(
        child: Column(
          children: [
            const Percent(),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                itemCount: taskList.length,
                separatorBuilder: (context, index) => const SizedBox(height: 15),
                itemBuilder: (context, index) {
                  return ProviderScope(
                    overrides: [currentTaskProvider.overrideWithValue(taskList[index])],
                    child: const TaskItem(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
