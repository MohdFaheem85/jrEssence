
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jressence/app_manager/widgets/text_field/primary_text_field_util.dart';
import '../../app_color.dart';
import '../../text_theme.dart';


class PrimaryDateTimeField extends StatelessWidget {

  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final int? maxLine;
  final int? maxLength;
  final bool? enabled;
  final TextAlign? textAlign;
  final InputDecoration? decoration;
  final ValueChanged? onChanged;
  final Color? borderColor;
  final String? labelText;
  final Color? backgroundColor;
  final Color? hintTextColor;
  final InputBorder? border;
  final TextStyle? style;
  final BoxConstraints? suffixIconConstraints;
  final BoxConstraints? prefixIconConstraints;
  final List<TextInputFormatter>? inputFormatters;

  final DateTimePickerType? dateTimePickerType;
  final String? initialValue;
  final bool? useFutureDate;
  final DateTime? firstDate;
  final DateTime? lastDate;


  const PrimaryDateTimeField({super.key, this.hintText, this.controller,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLength,
    this.enabled,
    this.textAlign,
    this.decoration,
    this.onChanged,
    this.borderColor,
    this.maxLine,
    this.labelText,
    this.backgroundColor,
    this.hintTextColor,
    this.border,
    this.suffixIconConstraints,
    this.prefixIconConstraints,
    this.style,

    this.dateTimePickerType,
    this.initialValue,
    this.useFutureDate,
    this.inputFormatters,
    this.firstDate,
    this.lastDate,

  });

  @override
  Widget build(BuildContext context) {
    return
      DateTimePicker(
        inputFormatters: inputFormatters,

          type: dateTimePickerType?? DateTimePickerType.date,
          dateMask: (dateTimePickerType==DateTimePickerType.dateTime)?'dd/MM/yyy    hh:mm a':
          (dateTimePickerType==DateTimePickerType.time)?
          'hh:mm a'
              :
          'dd/MM/yyy',
          initialValue: initialValue,
          firstDate: firstDate??( (useFutureDate?? false)? DateTime.now():DateTime(1980)),
          lastDate: lastDate?? ((useFutureDate?? false)? DateTime.now().add(const Duration(days: 30)):DateTime.now()),
          icon: const Icon(Icons.event),

          cursorColor: AppColor.black,
          enabled: enabled??true,
          controller: controller,
          textInputAction: TextInputAction.done,
          //  style: const TextStyle(color: Colors.white),
          minLines: maxLine,
          maxLines: maxLine==null? 1:100,
          maxLength: maxLength,
          textAlign: textAlign?? TextAlign.start,
          onChanged: onChanged==null? null:(val){
            onChanged!(val);
          },
          // style:  MyTextTheme().mediumBCN,
          decoration: decoration??InputDecoration(
            filled: true,
            isDense: true,
            fillColor: (enabled??true)?
            backgroundColor??
                PrimaryTextFieldUtil.fillColor:Colors.grey.shade200,
            counterText: '',
            //contentPadding: isPasswordField==null? EdgeInsets.all(5):isPasswordField? EdgeInsets.fromLTRB(5,5,5,5):EdgeInsets.all(5),
            contentPadding: const EdgeInsets.all(10),
            hintText: hintText,
            hintStyle: MyTextTheme.mediumPCN.copyWith(
                color:hintTextColor?? AppColor.grey
            ),
            labelText: labelText,
            labelStyle: MyTextTheme.smallPCB,
            errorStyle: MyTextTheme.mediumBCN.copyWith(
                color: AppColor.error
            ),

            suffixIconConstraints: suffixIconConstraints??const BoxConstraints(
                maxHeight: 30,
                minHeight: 20,
                maxWidth: 40,
                minWidth: 40
            ),
            prefixIconConstraints:prefixIconConstraints?? const BoxConstraints(
                maxHeight: 30,
                minHeight: 20,
                maxWidth: 40,
                minWidth: 40
            ),
            prefixIcon: prefixIcon,
            suffixIcon:  suffixIcon,

            focusedBorder:  border??OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(PrimaryTextFieldUtil.border)),
              borderSide: BorderSide(
                  color: borderColor??PrimaryTextFieldUtil.borderColor,
                  width: 1
              ),
            ),
            enabledBorder:  border?? OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(PrimaryTextFieldUtil.border)),
              borderSide: BorderSide(
                  color: borderColor??PrimaryTextFieldUtil.borderColor,
                  width: 1
              ),
            ),
            disabledBorder:  border?? OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(PrimaryTextFieldUtil.border)),
              borderSide: BorderSide(
                  color: borderColor??PrimaryTextFieldUtil.borderColor,
                  width: 1
              ),
            ),
            errorBorder:   border?? OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(PrimaryTextFieldUtil.border)),
              borderSide: BorderSide(
                  color: borderColor??PrimaryTextFieldUtil.borderColor,
                  width: 1
              ),
            ),
            focusedErrorBorder:  OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(PrimaryTextFieldUtil.border)),
              borderSide: BorderSide(
                  color: borderColor??PrimaryTextFieldUtil.borderColor,
                  width: 1
              ),
            ),
          ),
          validator: validator
      );
  }
}
