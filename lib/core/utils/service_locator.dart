import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:supermarket/core/utils/api_service.dart';
import 'package:supermarket/features/home/data/repo/home_repo_impl.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(
    ApiService(Dio()),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(getIt.get<ApiService>()),
  );
}
