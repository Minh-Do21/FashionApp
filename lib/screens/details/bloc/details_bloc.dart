import 'package:bloc/bloc.dart';
import 'package:fashion_app/screens/details/bloc/details_event.dart';
import 'package:fashion_app/screens/details/bloc/details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc() : super(const DetailsState(clickColor: false));

  @override
  Stream<DetailsState> mapEventToState(DetailsEvent event) async* {
    if (event is SelectColor) {
      yield* _selectColorToState(event, state);
    }
  }

  Stream<DetailsState> _selectColorToState(
      DetailsEvent event, DetailsState state) async* {
    print("Bạn đã bấm chọn màu !");
  }
}
