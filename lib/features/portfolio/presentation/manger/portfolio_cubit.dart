
import 'package:flutter_bloc/flutter_bloc.dart';

part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit() : super(PortfolioInitial());

  static PortfolioCubit get(context) => BlocProvider.of(context);

  onPageChanged(index) {
    emit(PortfolioIndexChange(currentIndex: index));
  }

}
