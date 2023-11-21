import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/shortcut/shortcut_bloc.dart';
import '../bloc/signal/signal_bloc.dart';
import '../models/shortcut_keys.dart';

const _fabOffset = 20.0;

class ShortcutControls extends StatelessWidget {
  const ShortcutControls({super.key});

  @override
  Widget build(BuildContext context) {
    final signalBloc = context.read<SignalBloc>();

    return BlocProvider(
      create: (context) => ShortcutBloc(signalBloc),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ShortcutBloc>();

    return BlocBuilder<ShortcutBloc, ShortcutState>(
      builder: (context, state) {
        return Stack(
          children: [
            Positioned.fill(
              child: ListView(
                children: [
                  CheckboxListTile(
                    value: state.selecting,
                    title: const Text('Select multiple keys'),
                    onChanged: (v) => bloc.add(const ShortcutEvent.selectingSwitched()),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Builder(
                            builder: (context) {
                              const key = ShortcutKeys.arrowUp;

                              return _SelectedButton(
                                selected: state.isSelected(key),
                                child: ElevatedButton(
                                  onPressed: () => bloc.add(const ShortcutEvent.keyPressed(key: key)),
                                  child: const Text('↑'),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Builder(
                            builder: (context) {
                              const key = ShortcutKeys.arrowLeft;

                              return _SelectedButton(
                                selected: state.isSelected(key),
                                child: ElevatedButton(
                                  onPressed: () => bloc.add(const ShortcutEvent.keyPressed(key: key)),
                                  child: const Text('←'),
                                ),
                              );
                            },
                          ),
                          const _WidthSpacing(),
                          Builder(
                            builder: (context) {
                              const key = ShortcutKeys.arrowDown;

                              return _SelectedButton(
                                selected: state.isSelected(key),
                                child: ElevatedButton(
                                  onPressed: () => bloc.add(const ShortcutEvent.keyPressed(key: key)),
                                  child: const Text('↓'),
                                ),
                              );
                            },
                          ),
                          const _WidthSpacing(),
                          Builder(
                            builder: (context) {
                              const key = ShortcutKeys.arrowRight;

                              return _SelectedButton(
                                selected: state.isSelected(key),
                                child: ElevatedButton(
                                  onPressed: () => bloc.add(const ShortcutEvent.keyPressed(key: key)),
                                  child: const Text('→'),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (state.selecting)
              Positioned(
                bottom: _fabOffset,
                right: _fabOffset,
                child: FloatingActionButton(
                  onPressed: () => bloc.add(const ShortcutEvent.sendSelectedPressed()),
                  child: const Icon(Icons.send),
                ),
              ),
          ],
        );
      },
    );
  }
}

class _WidthSpacing extends StatelessWidget {
  const _WidthSpacing();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: 10);
  }
}

class _SelectedButton extends StatelessWidget {
  const _SelectedButton({
    required this.selected,
    required this.child,
  });

  final bool selected;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (selected) {
      final theme = Theme.of(context);

      return Theme(
        data: theme.copyWith(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              side: MaterialStateProperty.all(
                BorderSide(
                  color: theme.primaryColor,
                ),
              ),
            ),
          ),
        ),
        child: child,
      );
    }

    return child;
  }
}
