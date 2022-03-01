import 'package:equatable/equatable.dart';

class DetailsState extends Equatable {
  final bool? clickColor;

  const DetailsState({this.clickColor});

  DetailsState copyWith({bool? clickColor}) {
    return DetailsState(clickColor: clickColor ?? this.clickColor);
  }

  @override
  List<Object?> get props => [clickColor];
}
