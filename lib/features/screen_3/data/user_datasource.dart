import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:suitmedia_msib/core/failure/failure.dart';
import 'package:suitmedia_msib/features/screen_3/model/user.dart';

class UserDatasource {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://reqres.in/api',
    ),
  );

  Future<Either<Failure, GetUser>> getUser({required int page, required int perPage}) async {
    try {
      final response = await dio.get('/users?page=$page&per_page=$perPage');

      return right(GetUser.fromJson(response.data));
    } on DioException catch (e) {
      return left(
        Failure(
          e.message ?? e.error.toString(),
        ),
      );
    }
  }
}
