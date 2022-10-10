part of 'chart_details_cubit.dart';

abstract class ChartDetailsState extends Equatable {
  const ChartDetailsState();

  @override
  List<Object> get props => [];
}

class ChartDetailsInitialState extends ChartDetailsState {}

class ChartDetailsloadingState extends ChartDetailsState {}

class ChartDetailsLoadedState extends ChartDetailsState {
  const ChartDetailsLoadedState({required this.chartResponse});
  final ChartData chartResponse;

  @override
  List<Object> get props => [chartResponse];
}

class ChartDetailsErrorState extends ChartDetailsState {
  const ChartDetailsErrorState({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}
