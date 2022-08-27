import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nanolink_app/resources/colors/app_colors.dart';
import 'package:nanolink_app/resources/text_theme/text_styles.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({
    super.key,
    this.hintText,
    this.type = TextInputType.text,
    this.initialValue,
    this.errorText,
    this.fillColor,
    this.maxLength,
    this.readOnly = false,
    this.suffixIcon,
    this.suffix,
    this.prefix,
    this.onTap,
    this.controller,
    this.onChanged,
    this.prefixIcon,
    this.autocorrect = false,
    this.textCapitalization,
    this.focusNode,
    this.inputTextStyle,
    this.enabled = true,
    this.obscureText = false,
    this.inputFormatters,
    this.label,
    this.textInputAction,
    this.onFieldSubmitted,
    this.autofocus = false,
    this.maxLines,
    this.hintStyle,
    this.autofillHints,
  });

  final bool readOnly;
  final String? hintText;
  final String? errorText;
  final TextInputType type;
  final int? maxLength;
  final TextCapitalization? textCapitalization;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? prefix;
  final Color? fillColor;
  final GestureTapCallback? onTap;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final bool autocorrect;
  final String? initialValue;
  final FocusNode? focusNode;
  final TextStyle? inputTextStyle;
  final bool enabled;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final String? label;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onFieldSubmitted;
  final bool autofocus;
  final int? maxLines;
  final TextStyle? hintStyle;
  final List<String>? autofillHints;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      autofocus: autofocus,
      inputFormatters: inputFormatters,
      obscureText: obscureText,
      enabled: enabled,
      focusNode: focusNode,
      key: key,
      autofillHints: autofillHints,
      initialValue: initialValue,
      controller: controller,
      onChanged: onChanged,
      maxLength: maxLength,
      keyboardType: type,
      autocorrect: autocorrect,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      onTap: onTap,
      readOnly: readOnly,
      decoration: InputDecoration(
        floatingLabelAlignment: FloatingLabelAlignment.start,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        errorText: errorText,
        errorStyle: const TextStyle(height: 0, fontSize: 0),
        filled: true,
        fillColor: fillColor,
        hintText: hintText,
        hintStyle: hintStyle ??
            AppTextStyles.body.copyWith(
              color: context.colors.accentColor.withOpacity(0.5),
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: context.colors.accentColor.withOpacity(0.3),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: context.colors.accentColor.withOpacity(0.3),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: context.colors.accentColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: context.colors.accentColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: context.colors.accentColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: context.colors.secondaryColor.withOpacity(0.1),
          ),
        ),
        suffixIcon: suffixIcon,
        suffix: suffix,
        prefixIcon: prefixIcon,
        prefix: prefix,
      ),
    );
  }
}
