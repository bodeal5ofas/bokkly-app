import 'package:bokkly_app/core/utils/api_service.dart';
import 'package:bokkly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bokkly_app/features/search/data/repo/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
void setupServiceLocater() {
  getit.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(apiService: ApiService(Dio())));
  getit.registerSingleton<SearchRepoImpl>(
      SearchRepoImpl(apiService: ApiService(Dio())));
}
