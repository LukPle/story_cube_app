import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_cube_app/data/local_storage.dart';

import '../models/chronicle_profile_model.dart';
import 'story_cube_state.dart';

class StoryCubeCubit extends Cubit<StoryCubeState> {
  StoryCubeCubit() : super(const StoryCubeInitial());

  final _localStorage = LocalStorage.instance;

  Future<void> loadAppData() async {
    emit(const StoryCubeLoadInProgress());

    try {
      final chronicleProfile = await _localStorage.loadChronicleProfile();
      emit(StoryCubeLoadSuccess(chronicleProfile: chronicleProfile));
    } catch (e) {
      emit(const StoryCubeLoadFailure());
    }
  }

  Future<void> updateChronicleProfile(ChronicleProfileModel chronicleProfile) async {
    await LocalStorage.instance.saveChronicleProfile(chronicleProfile);
    emit(StoryCubeLoadSuccess(chronicleProfile: chronicleProfile));
  }
}
