import 'package:music_app/backend/models/music_data.dart';

abstract class LocalRepository {
  MusicData getLocalMusicData();
  MusicData storeLocalMusicData(MusicData musicData);
}