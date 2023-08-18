import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sunnah/models/task_model.dart';
import 'package:sunnah/riverpods/task_notifier.dart';
import 'package:sunnah/widgets/task_dropdown_button.dart';
import 'package:uuid/uuid.dart';

///Bütün görevlerin listesini döndürür.
final displayAllTaskProvider = StateNotifierProvider<TaskNotifier, List<TaskModel>>((ref) {
  return TaskNotifier([
    TaskModel(
      id: const Uuid().v4(),
      title: "Tebliğ Etmek",
      description: "Bu sünnetin önemi...",
      videoLink: "P79my65IpEk",
      option: Option.rarely,
    ),
    TaskModel(
      id: const Uuid().v4(),
      title: "Sabah Namazının 2 Rekatlık Sünneti",
      description: "Bu sünnetin önemi...",
      videoLink: "3xAFGY_m2AQ",
      option: Option.generally,
    ),
  ]);
});

///Ana sayfada override edileceğinden dolayı içindeki ifadenin önemi yok.
final currentTaskProvider = Provider<TaskModel>((ref) {
  throw UnimplementedError();
});
