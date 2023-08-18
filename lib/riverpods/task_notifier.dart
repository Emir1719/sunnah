import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sunnah/models/task_model.dart';
import 'package:sunnah/widgets/task_dropdown_button.dart';

class TaskNotifier extends StateNotifier<List<TaskModel>> {
  TaskNotifier(super.state);
  //state ifadesi şudur = List<TaskModel>

  ///Verilen id değerine sahip görevin [option] özelliğini değiştirir.
  ///Diğer özellikler sabit kalır.
  void edit(String id, Option option) {
    state = [
      for (var task in state)
        if (id == task.id)
          TaskModel(id: id, title: task.title, description: task.description, videoLink: task.videoLink, option: option)
        else
          task
    ];
  }

  ///Listede bulunan ve option değeri always olan görevlerin sayısını döndürür.
  int countAlways() {
    return state.where((element) => element.option == Option.always).length;
  }

  ///Listede bulunan ve option değeri generally olan görevlerin sayısını döndürür.
  int countGenerally() {
    return state.where((element) => element.option == Option.generally).length;
  }

  ///Listede bulunan ve option değeri rarely olan görevlerin sayısını döndürür.
  int countRarely() {
    return state.where((element) => element.option == Option.rarely).length;
  }

  ///Listede bulunan ve option değeri never olan görevlerin sayısını döndürür.
  int countNever() {
    return state.where((element) => element.option == Option.never).length;
  }

  ///Görevlerin totaldeki tamamlanma yüzdesi. <br>
  ///10 görev. 8 always, 2 never ise 800/10 = %80 <br>
  ///10 görev. 6 always, 2 generally, 2 rarely ise (600 + 132 + 66) / 10 = %79,8
  double getCompletionPercentage() {
    return (countAlways() * 100 + countGenerally() * 66 + countRarely() * 33 + countNever() * 0) / state.length;
  }
}
