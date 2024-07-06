part of 'session_settings_bloc.dart';

abstract class SessionSettingsEvent extends Equatable {
  const SessionSettingsEvent();

  @override
  List<Object> get props => [];
}

class LoadSessionSettings extends SessionSettingsEvent {}

class ToggleChat extends SessionSettingsEvent {
  final bool isChatActive;
  final int price;

  const ToggleChat({required this.isChatActive, required this.price});

  @override
  List<Object> get props => [isChatActive, price];
}

class ToggleCall extends SessionSettingsEvent {
  final bool isCallActive;
  final int price;

  const ToggleCall({required this.isCallActive, required this.price});

  @override
  List<Object> get props => [isCallActive, price];
}

class ToggleVideo extends SessionSettingsEvent {
  final bool isVideoActive;
  final int price;

  const ToggleVideo({required this.isVideoActive, required this.price});

  @override
  List<Object> get props => [isVideoActive, price];
}

class ToggleInPerson extends SessionSettingsEvent {
  final bool isInPersonActive;
  final int price;

  const ToggleInPerson({required this.isInPersonActive, required this.price});

  @override
  List<Object> get props => [isInPersonActive, price];
}

class UpdateDuration extends SessionSettingsEvent {
  final int duration;

  const UpdateDuration({required this.duration});

  @override
  List<Object> get props => [duration];
}

class UpdateTargetGenders extends SessionSettingsEvent {
  final String selectedGenders;

  const UpdateTargetGenders({required this.selectedGenders});

  @override
  List<Object> get props => [selectedGenders];
}

class UpdateMinAge extends SessionSettingsEvent {
  final int minAge;

  const UpdateMinAge({required this.minAge});

  @override
  List<Object> get props => [minAge];
}

class UpdateMaxAge extends SessionSettingsEvent {
  final int maxAge;

  const UpdateMaxAge({required this.maxAge});

  @override
  List<Object> get props => [maxAge];
}

class ToggleUpdateBodyMeasurements extends SessionSettingsEvent {
  final bool isUpdateBodyMeasurements;

  const ToggleUpdateBodyMeasurements({required this.isUpdateBodyMeasurements});

  @override
  List<Object> get props => [isUpdateBodyMeasurements];
}

class ToggleUpdatePreferences extends SessionSettingsEvent {
  final bool isUpdatePreferences;

  const ToggleUpdatePreferences({required this.isUpdatePreferences});

  @override
  List<Object> get props => [isUpdatePreferences];
}

class ToggleAttachBodyImage extends SessionSettingsEvent {
  final bool isAttachBodyImage;

  const ToggleAttachBodyImage({required this.isAttachBodyImage});

  @override
  List<Object> get props => [isAttachBodyImage];
}

class ToggleAttachMedical extends SessionSettingsEvent {
  final bool isAttachMedical;

  const ToggleAttachMedical({required this.isAttachMedical});

  @override
  List<Object> get props => [isAttachMedical];
}

// Add this new event
class SaveSessionSettings extends SessionSettingsEvent {}