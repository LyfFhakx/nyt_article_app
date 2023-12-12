import 'package:nytimes_articles_app/src/data/modules/services/article_api_service.dart';
import 'package:nytimes_articles_app/src/data/modules/services/article_api_service_impl.dart';

import '../../core.dart';
import '../../data.dart';
import '../../domain.dart';
import '../network/dio_network.dart';

initAppInjections() {
  getIt.registerFactory<AppSharedPrefs>(() => AppSharedPrefs(getIt()));
}

initArticlesInjections() {
  getIt.registerSingleton<ArticleApiService>(
      ArticlesApServiceImpl(DioNetwork.appAPI));
  getIt.registerSingleton<ArticlesRepository>(ArticlesRepositoryImpl(getIt()));
}
