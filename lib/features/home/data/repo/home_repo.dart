import 'package:dartz/dartz.dart';
import 'package:supermarket/core/errors/failures.dart';
import 'package:supermarket/features/home/data/models/product_model/category.dart';
import 'package:supermarket/features/home/data/models/product_model/product_model.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<ProductModel>>> fetchBestSeller();
  // Future<Either<Failure,List<ProductModel>>> fetchOffers();
  // Future<Either<Failure,List<Category>>> fetchtCategories();
  // Future<Either<Failure,List<ProductModel>>> fetchCategoryBooks({required String category});
}
