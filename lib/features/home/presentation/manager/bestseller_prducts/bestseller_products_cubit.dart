import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:supermarket/features/home/data/repo/home_repo.dart';
import 'package:supermarket/features/home/data/models/product_model/product_model.dart';

part 'bestseller_products_state.dart';

class BestsellerProductsCubit extends Cubit<BestsellerProductsState> {
  BestsellerProductsCubit(this.homeRepo) : super(BestsellerProductsInitial());
  final HomeRepo homeRepo;
  Future<void> fetchBestsellerProducts() async {
    emit(BestsellerProductsLoading());
      final products = await homeRepo.fetchBestSeller();
      products.fold((failuire){
      emit(BestsellerProductsFailure(failuire.errMessage));
      }, (products){
      emit(BestsellerProductsSuccess(products));
  });
  }
}
