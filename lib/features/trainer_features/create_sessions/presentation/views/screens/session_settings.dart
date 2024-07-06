import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/core/utils/text_styles.dart';
import 'package:forme_app/core/widgets/button_container.dart';
import 'package:forme_app/core/widgets/custom_app_bar_arrow_button.dart';
import 'package:forme_app/core/widgets/loader.dart';
import 'package:forme_app/features/trainer_features/create_sessions/presentation/views/widgets/duration_text_field.dart';
import 'package:forme_app/features/trainer_features/create_sessions/presentation/views/widgets/select_package.dart';
import 'package:forme_app/features/trainer_features/create_sessions/presentation/views/widgets/small_text_field.dart';
import 'package:forme_app/features/trainer_features/trainer_preference/presentation/views/widgets/two_choices.dart';

import '../../manager/session_settings_bloc/bloc/session_settings_bloc.dart';

class SessionSettingsScreen extends StatefulWidget {
  static const String routeName = '/session_settings_screen';

  const SessionSettingsScreen({Key? key}) : super(key: key);

  @override
  State<SessionSettingsScreen> createState() => _SessionSettingsScreenState();
}

class _SessionSettingsScreenState extends State<SessionSettingsScreen> {
  late TextEditingController durationController;
  late TextEditingController priceController1;
  late TextEditingController priceController2;
  late TextEditingController priceController3;
  late TextEditingController priceController4;
  late TextEditingController minAgeController;
  late TextEditingController maxAgeController;

  @override
  void initState() {
    super.initState();
    durationController = TextEditingController();
    priceController1 = TextEditingController();
    priceController2 = TextEditingController();
    priceController3 = TextEditingController();
    priceController4 = TextEditingController();
    minAgeController = TextEditingController();
    maxAgeController = TextEditingController();
  }

  @override
  void dispose() {
    durationController.dispose();
    priceController1.dispose();
    priceController2.dispose();
    priceController3.dispose();
    priceController4.dispose();
    minAgeController.dispose();
    maxAgeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          'Session Settings',
          style: TextStyles.heading4Bold.copyWith(fontSize: 18.sp),
        ),
        backgroundColor: AppColors.background,
        centerTitle: true,
        leading: CustomAppBarArrowButton(
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: BlocConsumer<SessionSettingsBloc, SessionSettingsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is SessionSettingsInitial) {
            return const Loader();
          } else if (state is SessionSettingsSuccess) {
            return Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Select Package',
                          style: TextStyles.textStyleSemiBold.copyWith(
                            color: AppColors.n400color,
                          ),
                        ),
                        const SizedBox(height: 16),
                        // SelectPackage Widgets (Messaging Session)
                        SelectPackage(
                          text: 'Messaging Session',
                          isInput: true,
                          initialValue: state.isChatActive,
                          priceController: priceController1,
                          onChanged: (value) {
                            final price = int.tryParse(priceController1.text);
                            if (price != null) {
                              ToggleChat(
                                isChatActive: value ?? false,
                                price: price,
                              )                              ;
                            } else {
                              // Handle invalid price input
                            }
                          },
                        ),
                        SizedBox(height: 8.h),
                        // SelectPackage Widgets (Voice Call Session)
                        SelectPackage(
                          text: 'Voice Call Session',
                          isInput: true,
                          initialValue: state.isCallActive,
                          priceController: priceController2,
                          onChanged: (value) {
                            final price = int.tryParse(priceController2.text);
                            if (price != null) {
                              ToggleCall(
                                isCallActive: value ?? false,
                                price: price,
                              )
                              ;
                            } else {
                              // Handle invalid price input
                            }
                          },
                        ),
                        SizedBox(height: 8.h),
                        // SelectPackage Widgets (Video Call Session)
                        SelectPackage(
                          text: 'Video Call Session',
                          isInput: true,
                          initialValue: state.isVideoActive,
                          priceController: priceController3,
                          onChanged: (value) {
                            final price = int.tryParse(priceController3.text);
                            if (price != null) {
                              ToggleVideo(
                                isVideoActive: value ?? false,
                                price: price,
                              )
                              ;
                            } else {
                              // Handle invalid price input
                            }
                          },
                        ),
                        SizedBox(height: 8.h),
                        SelectPackage(
                          text: 'In Person',
                          isInput: true,
                          initialValue: state.isInPersonActive,
                          priceController: priceController4,
                          onChanged: (value) {
                            final price = int.tryParse(priceController4.text);
                            if (price != null) {
                                ToggleInPerson(
                                  isInPersonActive: value ?? false,
                                  price: price,
                                  // Replace with correct session_type value for Voice Call
                                )
                              ;
                            } else {
                              // Handle invalid price input
                            }
                          },
                        ),
                        const SizedBox(height: 16),
                        const Divider(color: AppColors.n20Gray, thickness: 2),
                        const SizedBox(height: 24),
                        Text(
                          'Set Session Duration and Fees',
                          style: TextStyles.textStyleRegular.copyWith(
                            color: AppColors.n900Black,
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          'Define how long your session will be. Default(15 minutes).',
                          style: TextStyles.textStyleRegular.copyWith(
                            color: AppColors.n600color,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        RichText(
                          text: TextSpan(
                            text: 'Duration ',
                            style: TextStyles.textStyleRegular.copyWith(
                              color: AppColors.n400color,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '(Minutes)',
                                style: TextStyles.textStyleRegular.copyWith(
                                  color: AppColors.n100Gray,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.h),
                        // DurationTextField
                        DurationTextField(
                          controller: durationController,
                          onChanged: (value) {
                            final duration = int.tryParse(value);
                            if (duration != null) {
                                UpdateDuration(duration: duration)
                                
                                ;
                            } else {
                              // Handle invalid duration input (e.g., show an error message)
                            }
                          },
                        ),
                        SizedBox(height: 16.h),
                        const Divider(color: AppColors.n20Gray, thickness: 2),
                        SizedBox(height: 24.h),
                        RichText(
                          text: TextSpan(
                            text: 'Select Target Gender ',
                            style: TextStyles.textStyleRegular.copyWith(
                              color: AppColors.n400color,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '(Multi Choice)',
                                style: TextStyles.textStyleRegular.copyWith(
                                  color: AppColors.n100Gray,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.h),
                        // TwoChoices Widget
                        TwoChoices(
                          text1: 'Male',
                          text2: 'Female',
                          isIcon: true,
                          isMultiChoice: true,
                          onChanged: (String selectedGenders) {
                              UpdateTargetGenders(selectedGenders: selectedGenders)
                            ;
                          },
                        ),
                        SizedBox(height: 16.h),
                        const Divider(color: AppColors.n20Gray, thickness: 2),
                        SizedBox(height: 24.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Enter Target Age',
                              style: TextStyles.textStyleRegular.copyWith(
                                color: AppColors.n400color,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '(Optional)',
                              style: TextStyles.textStyleRegular.copyWith(
                                color: AppColors.n100Gray,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h),
                        // Target Age Fields
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // min Age
                            SmallTextField(
                              hintText: '15',
                              controller: minAgeController,
                              onChanged: (value) {
                                final minAge = int.tryParse(value);
                                if (minAge != null) {
                                    UpdateMinAge(minAge: minAge)
                                    ;
                                } else {
                                  // Handle invalid age input (e.g., show an error message)
                                }
                              },
                            ),
                            Icon(Icons.arrow_forward, color: AppColors.n900Black, size: 24.sp),
                            // max Age
                            SmallTextField(
                              hintText: '85',
                              controller: maxAgeController,
                              onChanged: (value) {
                                final maxAge = int.tryParse(value);
                                if (maxAge != null) {
                                    UpdateMaxAge(maxAge: maxAge)
                                    ;
                                } else {
                                  // Handle invalid age input (e.g., show an error message)
                                }
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h),
                        const Divider(color: AppColors.n20Gray, thickness: 2),
                        SizedBox(height: 24.h),
                        Text(
                          'Client should do the following before the session starts',
                          style: TextStyles.textStyleRegular.copyWith(
                            color: AppColors.n400color,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        // SelectPackage Widgets
                        SelectPackage(
                          onChanged: (value) {
                              ToggleUpdateBodyMeasurements(
                                isUpdateBodyMeasurements: value ?? false,
                              )
                            ;
                          },
                          isInput: false,
                          text: 'Update Body Measurements',
                        ),
                        SizedBox(height: 8.h),
                        SelectPackage(
                          onChanged: (value) {
                              ToggleUpdatePreferences(
                                isUpdatePreferences: value ?? false,
                              )
                              ;
                          },
                          isInput: false,
                          text: 'Update Preferences & Lifestyle Data',
                        ),
                        SizedBox(height: 8.h),
                        SelectPackage(
                          onChanged: (value) {
                              ToggleAttachBodyImage(
                                isAttachBodyImage: value ?? false,
                              )
                            ;
                          },
                          isInput: false,
                          text: 'Attach Body Images',
                        ),
                        SizedBox(height: 8.h),
                        SelectPackage(
                          onChanged: (value) {
                              ToggleAttachMedical(
                                isAttachMedical: value ?? false,
                              )
                            ;
                          },
                          isInput: false,
                          text: 'Attach Medical Reports',
                        ),
                        SizedBox(height: 100.h),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ButtonContainer(
                    buttonTitle: 'Save Changes',
                    onTap: () {
                      // Dispatch the new event when Save Changes button is tapped
                      context.read<SessionSettingsBloc>().add(SaveSessionSettings());
                    },
                  ),
                ),
              ],
            );
          } else {
            return const Center(child: Text('Error loading settings'));
          }
        },
      ),
    );
  }
}
