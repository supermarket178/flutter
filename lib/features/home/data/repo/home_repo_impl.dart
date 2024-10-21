import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:supermarket/core/errors/failures.dart';
import 'package:supermarket/core/utils/api_service.dart';
import 'package:supermarket/features/home/data/models/product_model/category.dart';
import 'package:supermarket/features/home/data/models/product_model/product_model.dart';
import 'package:supermarket/features/home/data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<ProductModel>>> fetchBestSeller() async {
    try {
      var data = await apiService.get(endPoint: 'products/?offset=0&limit=10');
      List<ProductModel> products = data.map((e) => ProductModel.fromJson(e)).toList();
      // for (var item in data.values) {
      //   products.add(ProductModel.fromJson(item));
      // }

      return Right(products);
    } on Exception catch (e) {
      return Left(ServerFailure(errMessage: e.toString()));
    }
  }

  // @override
  // Future<Either<Failure, List<ProductModel>>> fetchCategoryBooks(
  //     {required String category}) async {
  //   try {
  //     var data = await apiService.get(endPoint: 'categories/');
  //     List<ProductModel> products = [];
  //     for (var item in data.values) {
  //       if (item['category'] == category) {
  //         products.add(ProductModel.fromJson(item));
  //       }
  //     }
  //     return Right(products);
  //   } on Exception catch (e) {
  //     return Left(ServerFailure(errMessage: e.toString()));
  //   }
  // }

  // @override
  // Future<Either<Failure, List<ProductModel>>> fetchOffers() async {
  //   try {
  //     var data = await apiService.get(endPoint: 'products/?offset=10&limit=10');
  //     List<ProductModel> products = [];
  //     for (var item in data.values) {
  //       products.add(ProductModel.fromJson(item));
  //     }
  //     return Right(products);
  //   } on Exception catch (e) {
  //     return Left(ServerFailure(errMessage: e.toString()));
  //   }
  // }

  // @override
  // Future<Either<Failure, List<Category>>> fetchtCategories() async {
  //   try {
  //     var data = await apiService.get(endPoint: 'categories/');
  //     List<Category> categories = [];
  //     for (var item in data.values) {
  //       categories.add(Category.fromJson(item));
  //     }
  //     return Right(categories);
  //   } on Exception catch (e) {
  //     return Left(ServerFailure(errMessage: e.toString()));
  //   }
  // }
}
