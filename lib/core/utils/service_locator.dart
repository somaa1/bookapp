import 'package:bookapp/core/utils/api_service.dart';
import 'package:bookapp/features/home/data/repo/home_repo.dart';
import 'package:bookapp/features/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void c() {


  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));

// Alternatively you could write it if you don't like global variables
}
