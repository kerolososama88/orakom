import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orakom/features/product_details/presentation/manger/product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit() : super(ProductDetailsInitial());

  static ProductDetailsCubit get(context) => BlocProvider.of(context);

  int index = 0;

  onPageChanged(int index) {
    this.index = index;
    emit(ProductDetailsIndexChange());
  }
}
