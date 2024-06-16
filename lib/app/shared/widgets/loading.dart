import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({super.key, this.dimension});
  final double? dimension;

  @override
  Widget build(BuildContext context) {
    double dimension = this.dimension ?? 24;
    final isCompact = dimension <= 20;
    final colors = Theme.of(context).colorScheme;
    return SizedBox.square(
      dimension: dimension,
      child: CircularProgressIndicator(
        strokeWidth: isCompact ? 2 : 4,
        valueColor: AlwaysStoppedAnimation<Color>(colors.primary),
        backgroundColor: colors.onSurface.withOpacity(0.5),
      ),
    );
  }
}
