import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_cube_app/models/example_data.dart';
import 'package:story_cube_app/models/memory_model.dart';

import 'story_cube_state.dart';
import '../data/local_storage.dart';
import '../data/firebase_storage.dart';
import '../models/chronicle_profile_model.dart';

class StoryCubeCubit extends Cubit<StoryCubeState> {
  StoryCubeCubit() : super(const StoryCubeInitial());

  final _localStorage = LocalStorage.instance;

  Future<void> loadAppData() async {
    emit(const StoryCubeLoadInProgress());

    try {
      final chronicleProfile = await _localStorage.loadChronicleProfile();
      final memories = await fetchMemories();
      //final List<MemoryModel> memories = memoryData;
      emit(StoryCubeLoadSuccess(chronicleProfile: chronicleProfile, memories: memories));
    } catch (e) {
      print(e);
      emit(const StoryCubeLoadFailure());
    }
  }

  Future<void> updateChronicleProfile(ChronicleProfileModel chronicleProfile) async {
    if (state is StoryCubeLoadSuccess) {
      final successState = state as StoryCubeLoadSuccess;
      await LocalStorage.instance.saveChronicleProfile(chronicleProfile);
      emit(StoryCubeLoadSuccess(chronicleProfile: chronicleProfile, memories: successState.memories));
    }
  }
}
