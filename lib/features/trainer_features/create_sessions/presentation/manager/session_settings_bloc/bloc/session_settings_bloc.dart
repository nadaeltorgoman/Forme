import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:forme_app/core/api/api_consumer.dart';

part 'session_settings_event.dart';
part 'session_settings_state.dart';

class SessionSettingsBloc extends Bloc<SessionSettingsEvent, SessionSettingsState> {
  final ApiConsumer apiConsumer;

  SessionSettingsBloc({required this.apiConsumer}) : super(SessionSettingsInitial()) {
    on<LoadSessionSettings>(_onLoadSessionSettings);
    on<ToggleChat>(_onToggleChat);
    on<ToggleCall>(_onToggleCall);
    on<ToggleVideo>(_onToggleVideo);
    on<ToggleInPerson>(_onToggleInPerson);
    on<UpdateDuration>(_onUpdateDuration);
    on<UpdateTargetGenders>(_onUpdateTargetGenders);
    on<UpdateMinAge>(_onUpdateMinAge);
    on<UpdateMaxAge>(_onUpdateMaxAge);
    on<ToggleUpdateBodyMeasurements>(_onToggleUpdateBodyMeasurements);
    on<ToggleUpdatePreferences>(_onToggleUpdatePreferences);
    on<ToggleAttachBodyImage>(_onToggleAttachBodyImage);
    on<ToggleAttachMedical>(_onToggleAttachMedical);
    on<SaveSessionSettings>(_onSaveSessionSettings); // Add this line
  }

  Future<void> _updateSessionSettings(SessionSettingsState state) async {
    if (state is SessionSettingsSuccess) {
      try {
        final response = await apiConsumer.put(
          '/trainings/session-settings-update/',
          data: state.toJson(),
        );
        print('Session settings updated successfully: $response');
      } catch (error) {
        print('Error updating session settings: $error');
      }
    }
  }

  void _onLoadSessionSettings(
    LoadSessionSettings event,
    Emitter<SessionSettingsState> emit,
  ) {
    final initialState = SessionSettingsSuccess(
      isChatActive: false,
      chatPrice: 0,
      isCallActive: false,
      callPrice: 0,
      isVideoActive: false,
      videoPrice: 0,
      isInPersonActive: false,
      inPersonPrice: 0,
      duration: 0,
      selectedGender: 'both',
      minAge: 0,
      maxAge: 0,
      isUpdateBodyMeasurements: false,
      isUpdatePreferences: false,
      isAttachBodyImage: false,
      isAttachMedical: false,
    );
    emit(initialState);
  }
  void _onSaveSessionSettings(
  SaveSessionSettings event,
  Emitter<SessionSettingsState> emit,
) {
  if (state is SessionSettingsSuccess) {
    emit(state); // Emit the current state before updating
    _updateSessionSettings(state); // Call API to save data
  }
}


  void _onToggleChat(
    ToggleChat event,
    Emitter<SessionSettingsState> emit,
  ) {
    if (state is SessionSettingsSuccess) {
      final successState = state as SessionSettingsSuccess;
      final newState = successState.copyWith(
        isChatActive: event.isChatActive,
        chatPrice: event.price,
      );
      emit(newState);
    }
  }

  void _onToggleCall(
    ToggleCall event,
    Emitter<SessionSettingsState> emit,
  ) {
    if (state is SessionSettingsSuccess) {
      final successState = state as SessionSettingsSuccess;
      final newState = successState.copyWith(
        isCallActive: event.isCallActive,
        callPrice: event.price,
      );
      emit(newState);
    }
  }

  void _onToggleVideo(
    ToggleVideo event,
    Emitter<SessionSettingsState> emit,
  ) {
    if (state is SessionSettingsSuccess) {
      final successState = state as SessionSettingsSuccess;
      final newState = successState.copyWith(
        isVideoActive: event.isVideoActive,
        videoPrice: event.price,
      );
      emit(newState);
    }
  }

  void _onToggleInPerson(
    ToggleInPerson event,
    Emitter<SessionSettingsState> emit,
  ) {
    if (state is SessionSettingsSuccess) {
      final successState = state as SessionSettingsSuccess;
      final newState = successState.copyWith(
        isInPersonActive: event.isInPersonActive,
        inPersonPrice: event.price,
      );
      emit(newState);
    }
  }

  void _onUpdateDuration(
    UpdateDuration event,
    Emitter<SessionSettingsState> emit,
  ) {
    if (state is SessionSettingsSuccess) {
      final successState = state as SessionSettingsSuccess;
      final newState = successState.copyWith(
        duration: event.duration,
      );
      emit(newState);
    }
  }

  void _onUpdateTargetGenders(
    UpdateTargetGenders event,
    Emitter<SessionSettingsState> emit,
  ) {
    if (state is SessionSettingsSuccess) {
      final successState = state as SessionSettingsSuccess;
      final newState = successState.copyWith(
        selectedGender: event.selectedGenders,
      );
      emit(newState);
    }
  }

  void _onUpdateMinAge(
    UpdateMinAge event,
    Emitter<SessionSettingsState> emit,
  ) {
    if (state is SessionSettingsSuccess) {
      final successState = state as SessionSettingsSuccess;
      final newState = successState.copyWith(
        minAge: event.minAge,
      );
      emit(newState);
    }
  }

  void _onUpdateMaxAge(
    UpdateMaxAge event,
    Emitter<SessionSettingsState> emit,
  ) {
    if (state is SessionSettingsSuccess) {
      final successState = state as SessionSettingsSuccess;
      final newState = successState.copyWith(
        maxAge: event.maxAge,
      );
      emit(newState);
    }
  }

  void _onToggleUpdateBodyMeasurements(
    ToggleUpdateBodyMeasurements event,
    Emitter<SessionSettingsState> emit,
  ) {
    if (state is SessionSettingsSuccess) {
      final successState = state as SessionSettingsSuccess;
      final newState = successState.copyWith(
        isUpdateBodyMeasurements: event.isUpdateBodyMeasurements,
      );
      emit(newState);
    }
  }

  void _onToggleUpdatePreferences(
    ToggleUpdatePreferences event,
    Emitter<SessionSettingsState> emit,
  ) {
    if (state is SessionSettingsSuccess) {
      final successState = state as SessionSettingsSuccess;
      final newState = successState.copyWith(
        isUpdatePreferences: event.isUpdatePreferences,
      );
      emit(newState);
    }
  }

  void _onToggleAttachBodyImage(
    ToggleAttachBodyImage event,
    Emitter<SessionSettingsState> emit,
  ) {
    if (state is SessionSettingsSuccess) {
      final successState = state as SessionSettingsSuccess;
      final newState = successState.copyWith(
        isAttachBodyImage: event.isAttachBodyImage,
      );
      emit(newState);
    }
  }

  void _onToggleAttachMedical(
    ToggleAttachMedical event,
    Emitter<SessionSettingsState> emit,
  ) {
    if (state is SessionSettingsSuccess) {
      final successState = state as SessionSettingsSuccess;
      final newState = successState.copyWith(
        isAttachMedical: event.isAttachMedical,
      );
      emit(newState);
    }
  }
}
