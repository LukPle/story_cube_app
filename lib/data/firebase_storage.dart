import 'dart:convert';
import 'package:firebase_storage/firebase_storage.dart';

import '../models/memory_model.dart';

Future<List<MemoryModel>> fetchMemories() async {
  final storage = FirebaseStorage.instance;

  final ListResult jsonFiles = await storage.ref('jsons/').listAll();

  List<MemoryModel> memories = [];

  for (Reference jsonRef in jsonFiles.items) {
    try {
      String fileName = jsonRef.name.replaceAll('.json', '');

      final jsonString = await jsonRef.getData().then((bytes) => utf8.decode(bytes!));
      String cleanedJson = jsonString.trim();

      if (cleanedJson.startsWith('```json')) {
        cleanedJson = cleanedJson.replaceAll('```json', '').replaceAll('```', '').trim();
      }

      final Map<String, dynamic> jsonData = jsonDecode(cleanedJson);

      final audioRef = storage.ref('audios/$fileName.mp3');
      final audioUrl = await audioRef.getDownloadURL();

      memories.add(MemoryModel.fromMap(jsonData, audioUrl: audioUrl));
    } catch (e) {
      throw Exception('Error fetching memory for $jsonRef: $e');
    }
  }

  return memories;
}
