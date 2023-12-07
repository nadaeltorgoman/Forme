// complete_profile_body.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forme_app/features/complete_profile/presentation/views/widgets/profile_image_picker.dart';
import 'package:image_picker/image_picker.dart';

import 'package:forme_app/features/complete_profile/data/models/Complete_profile_data.dart';
import 'package:forme_app/features/complete_profile/presentation/manager/complete_profile_cubit/complete_profile_cubit.dart';
import 'package:forme_app/features/complete_profile/presentation/views/widgets/custom_button.dart';

import '../../../../Authentication/presentation/views/widgets/header_text.dart';
import 'body_fields.dart';

class CompleteProfileBody extends StatefulWidget {
  const CompleteProfileBody({Key? key}) : super(key: key);

  @override
  State<CompleteProfileBody> createState() => _CompleteProfileBodyState();
}

class _CompleteProfileBodyState extends State<CompleteProfileBody> {
  String? name, phone, gender, country;
  XFile? _imageFile;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CompleteProfileCubit, CompleteProfileState>(
      listener: (context, state) {
        // ... (unchanged)
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            scrollDirection: Axis.vertical,
            children: [
              const HeaderText(
                title: 'Complete Your Profile',
                subtitle:
                    'Don’t worry, only you can see your personal data. No one else will be able to see it.',
              ),
              SizedBox(height: 16.0.h),
              ProfileImagePicker(
                imageFile: _imageFile,
                onImageSelected: (file) {
                  setState(() {
                    _imageFile = file;
                  });
                },
              ),
              SizedBox(height: 32.0.h),
              buildBodyFields(
                name: name,
                phone: phone,
                gender: gender,
                country: country,
                onNameChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                onPhoneChanged: (value) {
                  setState(() {
                    phone = value;
                  });
                },
                onGenderChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                },
                onCountryChanged: (value) {
                  setState(() {
                    country = value;
                  });
                },
              ),
              SizedBox(height: 32.0.h),
              CustomPrimaryButton(
                text: 'Complete Profile',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    CompleteProfileData data = CompleteProfileData(
                      name: name!,
                      gender: gender!,
                      country: country!,
                      phone: phone!,
                    );
                    BlocProvider.of<CompleteProfileCubit>(context)
                        .handleCompleteProfile(data: data);
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
