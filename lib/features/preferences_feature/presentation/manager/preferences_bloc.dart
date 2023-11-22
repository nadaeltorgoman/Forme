import 'package:bloc/bloc.dart';
import 'package:forme_app/features/preferences_feature/presentation/manager/preferences_event.dart';
import 'package:forme_app/features/preferences_feature/presentation/manager/preferences_state.dart';

class PreferencesBloc extends Bloc<PreferencesEvent, PreferencesState> {
  PreferencesBloc() : super(PreferencesState()) {
    on<PreferencesEvent>((event, emit) {
      emit(PreferencesState(page: state.page));
    });
  }
}
