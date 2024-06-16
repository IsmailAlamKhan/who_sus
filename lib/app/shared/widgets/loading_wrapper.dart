import 'dart:async';

import 'package:flutter/material.dart';

class LoadingWrapper extends StatefulWidget {
  const LoadingWrapper({super.key, this.isLoading, this.onPressed, required this.builder});
  final bool? isLoading;
  final FutureOr<void> Function()? onPressed;
  final Widget Function(BuildContext, bool, VoidCallback?) builder;

  @override
  State<LoadingWrapper> createState() => _LoadingWrapperState();
}

class _LoadingWrapperState extends State<LoadingWrapper> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _isLoading = widget.isLoading ?? false;
  }

  @override
  void didUpdateWidget(covariant LoadingWrapper oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isLoading != oldWidget.isLoading) {
      setState(() => _isLoading = widget.isLoading ?? false);
    }
  }

  VoidCallback? _onPressed() {
    if (widget.onPressed == null) return null;
    return () async {
      if (widget.isLoading != null) {
        widget.onPressed!();
        return;
      }
      setState(() => _isLoading = true);
      await widget.onPressed!();
      setState(() => _isLoading = false);
    };
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _isLoading, _onPressed());
  }
}
