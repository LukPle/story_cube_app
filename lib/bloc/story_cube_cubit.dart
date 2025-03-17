import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_cube_app/models/memory_model.dart';
import 'story_cube_state.dart';
import '../data/local_storage.dart';
import '../data/firebase_storage.dart';
import '../models/chronicle_profile_model.dart';

class StoryCubeCubit extends Cubit<StoryCubeState> {
  StoryCubeCubit() : super(const StoryCubeInitial()) {
    _listenToMemoryChanges();
  }

  final _localStorage = LocalStorage.instance;
  StreamSubscription? _memorySubscription;

  Future<void> loadAppData() async {
    emit(const StoryCubeLoadInProgress());

    try {
      final chronicleProfile = await _localStorage.loadChronicleProfile();
      final List<MemoryModel> memories = await fetchMemories();

      emit(StoryCubeLoadSuccess(chronicleProfile: chronicleProfile, memories: memories));
    } catch (e) {
      print('Error loading app data: $e');
      emit(const StoryCubeLoadFailure());
    }
  }

  void _listenToMemoryChanges() {
    _memorySubscription = FirebaseFirestore.instance
        .collection('uploads')
        .snapshots()
        .listen((snapshot) async {
      if (state is StoryCubeLoadSuccess) {
        final successState = state as StoryCubeLoadSuccess;

        try {
          final updatedMemories = await fetchMemories();
          emit(StoryCubeLoadSuccess(chronicleProfile: successState.chronicleProfile, memories: updatedMemories));
        } catch (e) {
          print('Error updating memories: $e');
        }
      }
    }, onError: (error) {
      print('Firestore listener error: $error');
      emit(const StoryCubeLoadFailure());
    });
  }

  Future<void> updateChronicleProfile(ChronicleProfileModel chronicleProfile) async {
    if (state is StoryCubeLoadSuccess) {
      final successState = state as StoryCubeLoadSuccess;
      await _localStorage.saveChronicleProfile(chronicleProfile);
      emit(StoryCubeLoadSuccess(chronicleProfile: chronicleProfile, memories: successState.memories));
    }
  }

  @override
  Future<void> close() {
    _memorySubscription?.cancel();
    return super.close();
  }
}
