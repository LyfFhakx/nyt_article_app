import 'package:either_dart/either.dart';
import '../../core.dart';
import '../../data.dart';
import '../../domain.dart';
import '../../domain/failures/failure.dart';
import '../modules/services/article_api_service.dart';

class ArticlesRepositoryImpl extends ArticlesRepository {
  final ArticleApiService articleApiService;

  ArticlesRepositoryImpl(
      this.articleApiService,
      );

  // Gent Ny Times Articles
  @override
  Future<Either<Failure, List<ArticleEntity>>> getArticles(
      ArticlesParams params) async {
    try {
      final result = await articleApiService.getArticles(params);
      return Right(result.results ?? []);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }
}
