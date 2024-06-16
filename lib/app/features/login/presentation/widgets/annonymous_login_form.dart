import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/ui_commons/loading_button_style.dart';
import '../../../../shared/widgets/loading.dart';
import '../../../../shared/widgets/loading_wrapper.dart';
import '../../../../shared/widgets/textfield.dart';
import '../controllers/login_controller.dart';

class AnnonymousLoginForm extends ConsumerWidget {
  const AnnonymousLoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginControllerProvider);
    final controller = ref.watch(loginControllerProvider.notifier);
    final colors = Theme.of(context).colorScheme;
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Choose a nickname to continue', style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 15),
          AppTextField(
            value: (state.username, controller.setUsername),
            hintText: 'Nickname',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            isRequired: true,
            requiredText: 'Please enter a nickname',
          ),
          const SizedBox(height: 15),
          Builder(builder: (context) {
            return LoadingWrapper(
              onPressed: () async {
                if (!Form.of(context).validate()) return;
                final scaffoldMessenger = ScaffoldMessenger.of(context);
                final res = await controller.login();
                res.fold(
                  (l) => scaffoldMessenger
                      .showSnackBar(SnackBar(content: Text(l.exceptionData.message), backgroundColor: colors.error)),
                  (_) {},
                );
              },
              builder: (_, isLoading, onPressed) => SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: onPressed,
                  style: isLoading ? loadingButtonStyle(context) : null,
                  child: isLoading ? const Loader(dimension: 20) : const Text('Play'),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
