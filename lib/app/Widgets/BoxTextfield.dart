import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Utills/Colours.dart';

class BoxTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode?focusnode;
  final FormFieldValidator<String> ?validator;
  final bool ?obsecure;
  final bool ?readOnly;
  final VoidCallback ?onTap;
  final VoidCallback? onEditingCompleted;
  final TextInputType? keyboardType;
  final ValueChanged<String> ?onChanged;
  final List<TextInputFormatter> ?inputFormatters;
  final bool ?isMulti;
  final bool? autofocus;
  final bool ?enabled;
  final String ?hintText;
  final int ?maxLength;
  final String? errorText;
  final String ?initialvalue;
  final String ?label;
  final Widget ?suffix;
  final Widget ?prefix;

  BoxTextField(
      {Key? key,
      this.controller,
      this.inputFormatters,
      this.maxLength,
      this.validator,
      this.focusnode,
      this.keyboardType = TextInputType.text,
      this.obsecure = false,
      this.onTap,
      this.isMulti = false,
      this.initialvalue,
      this.readOnly = false,
      this.autofocus = false,
      this.errorText,
      @required this.label,
      this.suffix,
      this.hintText,
      this.prefix,
      this.enabled = true,
      this.onEditingCompleted,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical:1),
      child:
      TextFormField(
          style: _themeData.textTheme.bodyText1,
          // style:GoogleFonts.openSans(fontStyle: FontStyle.normal,color: Colors.black),
          onChanged: onChanged,
          cursorColor: AppPrimaryColor,
          onEditingComplete: onEditingCompleted,
          autofocus: autofocus!,
          minLines: isMulti! ? 4 : 1,
          maxLines: isMulti! ? null : 1,
          onTap: onTap,
          focusNode: focusnode,
          inputFormatters: inputFormatters,
          enabled: enabled,
          maxLength: maxLength,
          readOnly: readOnly!,
          obscureText: obsecure!,
          keyboardType: keyboardType,
          initialValue: initialvalue,
          controller: controller,
          decoration: InputDecoration(
            errorText: errorText,
            prefixIcon: prefix,
            suffixIcon: suffix,
            labelStyle: TextStyle(
              fontSize: 16,
              // fontFamily: 'Gotham',
              fontWeight: FontWeight.w400,
              color: Appblack,
              letterSpacing: 0.15,
            ),
            // labelText: label,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Appblack,
              fontSize: 16,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            focusedBorder: new OutlineInputBorder(
              borderSide: new BorderSide(
                color: Color(0XFF9C9C9C),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0XFF9C9C9C),
                width: 2.0,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                // color: Colors.red,
                color: Color(0XFF9C9C9C),
                width: 2.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                // color: Colors.red,
                color: Color(0XFF9C9C9C),
                width: 2.0,
              ),
            ),
          ),
          validator: validator),
    );
  }
}



// lableFontSize() {
//
// }
