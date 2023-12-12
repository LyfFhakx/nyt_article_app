import 'package:dio/dio.dart';
import '../../../core.dart';
import '../../../core/errors/dio_exception_handler.dart';
import '../../../data.dart';
import '../api/endpoint.dart';
import 'article_api_service.dart';

class ArticlesApServiceImpl extends ArticleApiService {
  final Dio dio;

  CancelToken cancelToken = CancelToken();

  ArticlesApServiceImpl(this.dio);

  // Articles Method
  @override
  Future<ArticleResponse<List<ArticleModel>>> getArticles(
      ArticlesParams params) async {
    try {
      final result = (await dio.get(
        getArticlePath(params.period),
      ));
      if (result.data == null) {
        throw ServerException("Unknown Error", result.statusCode);
      }

      return ArticleResponse.fromJson<List<ArticleModel>>(
          result.data, ArticleModel.fromJsonList);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        throw CancelTokenException(handleDioException(e), e.response?.statusCode);
      } else {
        throw ServerException(handleDioException(e), e.response?.statusCode);
      }
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(e.toString(), null);
    }
  }
}
