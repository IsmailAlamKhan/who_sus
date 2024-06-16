import 'package:flutter/material.dart';

import '../ui_commons/validators.dart';

abstract class Validator<T> {
  const Validator();
  abstract final String indentifier;
  String? call(T? value, String? fieldName);
}

extension ValidatorsX<T> on List<Validator<T>> {
  bool containsIdentifier(String identifier) {
    return any((element) => element.indentifier == identifier);
  }
}

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.value,
    this.hintText,
    this.obscureText = false,
    required this.keyboardType,
    required this.textInputAction,
    this.focusNode,
    this.onFocusChange,
    this.suffixIcon,
    this.prefixIcon,
    this.validators,
    this.isRequired = false,
    this.requiredText = 'This field is required',
  });
  final (String?, ValueChanged<String>?)? value;
  final String? hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final FocusNode? focusNode;
  final ValueChanged<bool>? onFocusChange;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final List<Validator<String>>? validators;
  final bool isRequired;
  final String requiredText;

  String? getValidator(String? value) {
    List<Validator<String>> validators = (this.validators ?? []).toList().cast<Validator<String>>();
    if (isRequired && !validators.containsIdentifier('required')) {
      // validators.add(RequiredValidator<T>());
      validators = [RequiredValidator<String>(messege: requiredText), ...validators];
    }

    for (final validator in validators) {
      String? error;

      error = validator(value, hintText);

      // final error = validator(value, null, widget.hintText);
      if (error != null) {
        return error;
      }
    }
    return null;
  }

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool obscureText = false;

  @override
  void initState() {
    super.initState();

    final (value, onChanged) = widget.value ?? (null, null);
    _controller = TextEditingController(text: value);
    _focusNode = widget.focusNode ?? FocusNode();

    _focusNode.addListener(() => widget.onFocusChange?.call(_focusNode.hasFocus));
    _controller.addListener(() => onChanged?.call(_controller.text));
    obscureText = widget.obscureText;
  }

  @override
  void dispose() {
    _controller.dispose();

    /// If the focus node is not provided, it means it was created in this widget
    /// and should be disposed of here
    if (widget.focusNode == null) _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> suffixIcons = [];
    if (widget.obscureText) {
      suffixIcons.add(
        IconButton(
          icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: () => setState(() => obscureText = !obscureText),
        ),
      );
    }
    if (widget.suffixIcon != null) suffixIcons.add(widget.suffixIcon!);
    final colors = Theme.of(context).colorScheme;
    final fillColor = colors.surface;

    return TextFormField(
      controller: _controller,
      validator: widget.getValidator,
      focusNode: _focusNode,
      decoration: InputDecoration(
        hintText: widget.hintText,
        filled: true,
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: colors.outline),
        ),
        suffixIcon: suffixIcons.isNotEmpty ? Row(mainAxisSize: MainAxisSize.min, children: suffixIcons) : null,
      ),
      obscureText: obscureText,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
    );
  }
}
