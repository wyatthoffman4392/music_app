import 'dart:convert';

import 'package:music_app/backend/models/music_data.dart';
import 'package:music_app/backend/repositories/remote_repository.dart';
import 'package:http/http.dart' as http;

final String dataURL = 'https://jsonplaceholder.typicode.com/albums';

class RemoteRepositoryEntity implements RemoteRepository {
  @override
  Future<MusicData> getMusicData() async {
    final response = await http.get(dataURL);
    if (response.statusCode == 200) {
      return MusicData.fromJson(json.decode(response.body));
    } else {
      throw Exception();
    }
  }
}
