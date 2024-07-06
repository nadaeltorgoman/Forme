import 'package:flutter/material.dart';
import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/core/utils/text_styles.dart';
import 'package:forme_app/features/trainer_features/create_sessions/presentation/views/widgets/custom_text_form_field.dart';

class SelectPackage extends StatefulWidget {
  final String text;
  final bool isInput;
  final bool initialValue;
  final ValueChanged<bool?> onChanged;
  final TextEditingController? priceController;

  const SelectPackage({
    Key? key,
    this.isInput = true,
    this.text = '',
    this.initialValue = false,
    required this.onChanged,
    this.priceController,
  }) : super(key: key);

  @override
  _SelectPackageState createState() => _SelectPackageState();
}

class _SelectPackageState extends State<SelectPackage> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (newValue) {
                setState(() {
                  isChecked = newValue ?? false;
                });
                widget.onChanged(newValue);
              },
              activeColor: AppColors.primaryColor,
            ),
            Text(widget.text, style: TextStyles.textStyleRegular.copyWith(color: AppColors.n900Black)),
          ],
        ),
        widget.isInput
            ? TextFieldWithCustomLabel(
                isEnabled: isChecked,
                controller: widget.priceController,
              )
            : Container(),
      ],
    );
  }
}
