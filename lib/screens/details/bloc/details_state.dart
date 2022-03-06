import 'package:equatable/equatable.dart';
import 'package:fashion_app/models/Product.dart';

class DetailsState extends Equatable {
  final Product product;

  const DetailsState({required this.product});

  DetailsState copyWith({Product? product}) {
    return DetailsState(product: product ?? this.product);
  }

  @override
  List<Object?> get props => [product];
}
