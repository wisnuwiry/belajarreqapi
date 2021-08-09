import 'package:dio/dio.dart';
import 'package:latihanreqapi/data/models/user_model.dart';

class UserRepository {
  final _client = Dio(BaseOptions(baseUrl: 'https://reqres.in/api'));

  Future<List<UserModel>> getUsers() async {
    try {
      final response = await _client.get('/users');

      return List<UserModel>.from(
        response.data['data'].map(
          (x) => UserModel.fromJson(x),
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
