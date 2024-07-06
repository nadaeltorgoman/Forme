import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'availability_event.dart';
part 'availability_state.dart';

class AvailabilityBloc extends Bloc<AvailabilityEvent, AvailabilityState> {
  AvailabilityBloc() : super(AvailabilityInitial()) {
    on<AvailabilityEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
