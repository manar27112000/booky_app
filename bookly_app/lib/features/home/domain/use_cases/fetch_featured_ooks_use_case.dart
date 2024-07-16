import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/domain/use_cases/use_cases.dart';
import 'package:dartz/dartz.dart';

import '../entities/book_entity.dart';
import '../repos/home_repo.dart';

class  FetchFeaturedBooksUseCse extends UseCase<List<BookEntity>,NoParam>{
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCse(this.homeRepo);

  @override
  Future<Either<Failure,List<BookEntity>>> call([NoParam ? param]) async{
    return await  homeRepo.fetchFeaturedBooks();

  }


}