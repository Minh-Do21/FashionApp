// ignore_for_file: unrelated_type_equality_checks

import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:fashion_app/models/Product.dart';
import 'package:fashion_app/screens/details/bloc/details_event.dart';
import 'package:fashion_app/screens/details/bloc/details_state.dart';

import '../../../models/ColorProduct.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final Product product;
  DetailsBloc({required this.product}) : super(DetailsState(product: product));

  @override
  Stream<DetailsState> mapEventToState(DetailsEvent event) async* {
    if (event is SelectColor) {
      yield* _selectColorToState(event, state);
    }
  }

  Stream<DetailsState> _selectColorToState(
      SelectColor event, DetailsState state) async* {
   
    for (var i = 0; i < state.product.colorProducts.length; i++) {
      print("Đã chọn ${event.index}");
      if(state.product.colorProducts[i] == state.product.colorProducts[event.index]){
        state.product.colorProducts[i].isActive = true;
        state.product.bgColor = state.product.colorProducts[i].color;
      }else{
        state.product.colorProducts[i].isActive = false;
      }

    }

    // state.product.colorProducts.firstWhere((item) => item. == '001', orElse: () => null);
        
    yield state.copyWith(product: Product(image: state.product.image, title: state.product.title, bgColor: state.product.bgColor, price: state.product.price, colorProducts: state.product.colorProducts));
  }
}
