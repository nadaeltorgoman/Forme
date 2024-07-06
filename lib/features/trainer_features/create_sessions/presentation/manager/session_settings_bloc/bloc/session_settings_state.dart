part of 'session_settings_bloc.dart';

abstract class SessionSettingsState extends Equatable {
  const SessionSettingsState();

  @override
  List<Object> get props => [];
}

class SessionSettingsInitial extends SessionSettingsState {}

class SessionSettingsSuccess extends SessionSettingsState {
  final bool isChatActive;
  final int chatPrice;
  final bool isCallActive;
  final int callPrice;
  final bool isVideoActive;
  final int videoPrice;
  final bool isInPersonActive;
  final int inPersonPrice;
  final int duration;
  final String selectedGender;
  final int minAge;
  final int maxAge;
  final bool isUpdateBodyMeasurements;
  final bool isUpdatePreferences;
  final bool isAttachBodyImage;
  final bool isAttachMedical;

  const SessionSettingsSuccess({
    required this.isChatActive,
    required this.chatPrice,
    required this.isCallActive,
    required this.callPrice,
    required this.isVideoActive,
    required this.videoPrice,
    required this.isInPersonActive,
    required this.inPersonPrice,
    required this.duration,
    required this.selectedGender,
    required this.minAge,
    required this.maxAge,
    required this.isUpdateBodyMeasurements,
    required this.isUpdatePreferences,
    required this.isAttachBodyImage,
    required this.isAttachMedical,
  });

  SessionSettingsSuccess copyWith({
    bool? isChatActive,
    int? chatPrice,
    bool? isCallActive,
    int? callPrice,
    bool? isVideoActive,
    int? videoPrice,
    bool? isInPersonActive,
    int? inPersonPrice,
    int? duration,
    String? selectedGender,
    int? minAge,
    int? maxAge,
    bool? isUpdateBodyMeasurements,
    bool? isUpdatePreferences,
    bool? isAttachBodyImage,
    bool? isAttachMedical,
  }) {
    return SessionSettingsSuccess(
      isChatActive: isChatActive ?? this.isChatActive,
      chatPrice: chatPrice ?? this.chatPrice,
      isCallActive: isCallActive ?? this.isCallActive,
      callPrice: callPrice ?? this.callPrice,
      isVideoActive: isVideoActive ?? this.isVideoActive,
      videoPrice: videoPrice ?? this.videoPrice,
      isInPersonActive: isInPersonActive ?? this.isInPersonActive,
      inPersonPrice: inPersonPrice ?? this.inPersonPrice,
      duration: duration ?? this.duration,
      selectedGender: selectedGender ?? this.selectedGender,
      minAge: minAge ?? this.minAge,
      maxAge: maxAge ?? this.maxAge,
      isUpdateBodyMeasurements: isUpdateBodyMeasurements ?? this.isUpdateBodyMeasurements,
      isUpdatePreferences: isUpdatePreferences ?? this.isUpdatePreferences,
      isAttachBodyImage: isAttachBodyImage ?? this.isAttachBodyImage,
      isAttachMedical: isAttachMedical ?? this.isAttachMedical,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'package': [
        {
          'session_type': 'Messaging',
          'is_active': isChatActive,
          'price': chatPrice.toString(),
        },
        {
          'session_type': 'Voice Call',
          'is_active': isCallActive,
          'price': callPrice.toString(),
        },
        {
          'session_type': 'Video Call',
          'is_active': isVideoActive,
          'price': videoPrice.toString(),
        },
        {
          'session_type': 'In Person',
          'is_active': isInPersonActive,
          'price': inPersonPrice.toString(),
        },
      ],
      'duration': duration,
      'target_gender': selectedGender,
      'min_age': minAge,
      'max_age': maxAge,
      'update_body_measure': isUpdateBodyMeasurements,
      'update_pref_lifestyle': isUpdatePreferences,
      'attach_body_img': isAttachBodyImage,
      'attach_med_report': isAttachMedical,
    };
  }

  @override
  List<Object> get props => [
        isChatActive,
        chatPrice,
        isCallActive,
        callPrice,
        isVideoActive,
        videoPrice,
        isInPersonActive,
        inPersonPrice,
        duration,
        selectedGender,
        minAge,
        maxAge,
        isUpdateBodyMeasurements,
        isUpdatePreferences,
        isAttachBodyImage,
        isAttachMedical,
      ];
}
