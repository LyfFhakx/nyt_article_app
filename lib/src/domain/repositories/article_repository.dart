import 'package:either_dart/either.dart';
import 'package:nytimes_articles_app/src/domain.dart';
import '../../data.dart';
import '../failures/failure.dart';


abstract class ArticlesRepository {
  // Gent Ny Times Articles
  Future<Either<Failure, List<ArticleEntity>>> getArticles(ArticlesParams params);
}
