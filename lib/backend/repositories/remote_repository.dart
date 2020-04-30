import 'package:music_app/backend/models/music_data.dart';

abstract class RemoteRepository {
  Future<MusicData> getMusicData();
}