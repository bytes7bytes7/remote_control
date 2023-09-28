import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/shortcut/shortcut_bloc.dart';

class ShortcutControls extends StatelessWidget {
  const ShortcutControls({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShortcutBloc(),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}
