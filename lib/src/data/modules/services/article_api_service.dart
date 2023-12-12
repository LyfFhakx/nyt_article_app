import '../../../data.dart';

abstract class ArticleApiService {
  // Get all article
  Future<ArticleResponse<List<ArticleModel>>> getArticles(
      ArticlesParams params);
}
