part of 'portfolio_cubit.dart';

abstract class PortfolioState {}

class PortfolioInitial extends PortfolioState {}

class PortfolioIndexChange extends PortfolioState {
  final int currentIndex;

  PortfolioIndexChange({required this.currentIndex});
}
