import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../../inventory/data/model/product.dart';
import '../../../../inventory/domain/product_usecases.dart';

part 'search_product_state.dart';
part 'search_product_cubit.freezed.dart';

class SearchProductCubit extends Cubit<SearchProductState> {
  final _onFetchListUseCase = GetIt.instance<OnFetchProductsUseCase>();

  SearchProductCubit() : super(SearchProductState());

  List<Product> originalProducts = [];

  void onFetchList()async {
    emit(state.copyWith(status: SearchProductStatus.loading));

    final dataOrError = await _onFetchListUseCase();

    dataOrError.fold((l){
      emit(state.copyWith(status: SearchProductStatus.failed, message: l.when(firebase: (error) => error.message!,)));
    }, (products){
      originalProducts = products;
      emit(state.copyWith(status: SearchProductStatus.success, message: 'Fetched successfully', products: products));
    });
  }

  void onSearch(String value){
    if(value.isNotEmpty){
      final filteredList = originalProducts.where((element) => element.name.toLowerCase().contains(value.toLowerCase())).toList();
      emit(state.copyWith(products: filteredList));
    }else{
      emit(state.copyWith(products: originalProducts));
    }
  }

  void onSelectProduct(Product product){
    emit(state.copyWith(selectedProduct: product));
  }
}
