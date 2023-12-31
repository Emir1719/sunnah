import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sunnah/models/task_model.dart';
import 'package:sunnah/riverpods/task_notifier.dart';
import 'package:sunnah/riverpods/task_percent.dart';
import 'package:sunnah/sevices/task_service.dart';

final dataListProvider = StateProvider<List<TaskModel>>((ref) => []);

///Bütün görevlerin listesini döndürür.
final displayAllTaskProvider = StateNotifierProvider<TaskNotifier, List<TaskModel>>((ref) {
  return TaskNotifier();
});

///Ana sayfada override edileceğinden dolayı içindeki ifadenin önemi yok.
///Eğer override edilmeden kullanılırsa hata veriyor.
final currentTaskProvider = Provider<TaskModel>((ref) {
  throw UnimplementedError();
});

///Görevlerin yüzdesi.
final taskPercentProvider = StateNotifierProvider<TaskPercentNotifier, double>((ref) {
  return TaskPercentNotifier();
});

///Görevlerin bulunduğu servis.
final taskServiceProvider = Provider<TaskService>((ref) {
  return TaskService();
});

///Servise giderek jsondaki veriyi liste olarak döndürür.
final getTasksProvider = FutureProvider<List>((ref) async {
  final service = ref.read(taskServiceProvider);
  return service.getTasksLocal();
});
