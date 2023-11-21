import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/shortcut/shortcut_bloc.dart';
import '../bloc/signal/signal_bloc.dart';
import '../extensions/list_extension.dart';
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
                  const Column(
                    children: [
                      _Group(
                        keys: [
                          (ShortcutKeys.arrowUp, '↑'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.arrowLeft, '←'),
                          (ShortcutKeys.arrowDown, '↓'),
                          (ShortcutKeys.arrowRight, '→'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.shiftLeft, 'Shift L'),
                          (ShortcutKeys.shiftRight, 'Shift R'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.altLeft, 'Alt L'),
                          (ShortcutKeys.altRight, 'Alt R'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.ctrlLeft, 'Ctrl L'),
                          (ShortcutKeys.ctrlRight, 'Ctrl R'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.tab, 'Tab'),
                          (ShortcutKeys.capsLock, 'Caps Lock'),
                          (ShortcutKeys.esc, 'Esc'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.backspace, 'Backspace'),
                          (ShortcutKeys.space, 'Space'),
                          (ShortcutKeys.enter, 'Enter'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.f1, 'F1'),
                          (ShortcutKeys.f2, 'F2'),
                          (ShortcutKeys.f3, 'F3'),
                          (ShortcutKeys.f4, 'F4'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.f5, 'F5'),
                          (ShortcutKeys.f6, 'F6'),
                          (ShortcutKeys.f7, 'F7'),
                          (ShortcutKeys.f8, 'F8'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.f9, 'F9'),
                          (ShortcutKeys.f10, 'F10'),
                          (ShortcutKeys.f11, 'F11'),
                          (ShortcutKeys.f12, 'F12'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.insert, 'Insert'),
                          (ShortcutKeys.home, 'Home'),
                          (ShortcutKeys.pageUp, 'Page Up'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.del, 'Delete'),
                          (ShortcutKeys.end, 'End'),
                          (ShortcutKeys.pageDown, 'Page Down'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.num7, '7'),
                          (ShortcutKeys.num8, '8'),
                          (ShortcutKeys.num9, '9'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.num4, '4'),
                          (ShortcutKeys.num5, '5'),
                          (ShortcutKeys.num6, '6'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.num1, '1'),
                          (ShortcutKeys.num2, '2'),
                          (ShortcutKeys.num3, '3'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.num0, '0'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.printScreen, 'Print Screen'),
                          (ShortcutKeys.scrollLock, 'Scroll Lock'),
                          (ShortcutKeys.pause, 'Pause'),
                        ],
                      ),
                      _Group(
                        keys: [
                          (ShortcutKeys.numLock, 'Num Lock'),
                          (ShortcutKeys.win, 'Win'),
                          (ShortcutKeys.fn, 'Fn'),
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

class _Group extends StatelessWidget {
  const _Group({required this.keys});

  final List<(String, String)> keys;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ShortcutBloc>();

    return BlocBuilder<ShortcutBloc, ShortcutState>(
      builder: (context, state) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: keys
              .map<Widget>(
                (e) {
                  final key = e.$1;
                  final view = e.$2;

                  return _SelectedButton(
                    selected: state.isSelected(key),
                    child: ElevatedButton(
                      onPressed: () => bloc.add(ShortcutEvent.keyPressed(key: key)),
                      child: Text(view),
                    ),
                  );
                },
              )
              .toList()
              .separated(const _WidthSpacing()),
        );
      },
    );
  }
}
