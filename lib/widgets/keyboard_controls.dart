import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/keyboard/keyboard_bloc.dart';
import '../bloc/signal/signal_bloc.dart';
import '../models/keyboard_keys.dart';

const _iconSize = 16.0;
const _keyHeight = 50.0;
const _keyMargin = 4.0;
const _highlightBG = Colors.white70;

class KeyboardControls extends StatelessWidget {
  const KeyboardControls({super.key});

  @override
  Widget build(BuildContext context) {
    final signalBloc = context.read<SignalBloc>();

    return BlocProvider(
      create: (context) => KeyboardBloc(signalBloc),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<KeyboardBloc>();

    return LayoutBuilder(
      builder: (context, constraints) {
        return BlocBuilder<KeyboardBloc, KeyboardState>(
          builder: (context, state) {
            final keys = state.language.keys;
            final row1 =
                keys.isNotEmpty ? keys[0] : <MapEntry<String, String>>[];
            final row2 =
                keys.length > 1 ? keys[1] : <MapEntry<String, String>>[];
            final row3 =
                keys.length > 2 ? keys[2] : <MapEntry<String, String>>[];

            const row3FuncButtonsAmount = 2;

            final maxWidth = constraints.maxWidth;
            final maxItems = maxList([
              row1.length,
              row2.length,
              row3.length + row3FuncButtonsAmount
            ]);

            final itemWidth = maxWidth / maxItems;

            return Center(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: row1.map(
                      (e) {
                        return KeyboardButton(
                          value: Text(
                            state.shiftState == ShiftState.off
                                ? e.key.toLowerCase()
                                : e.key.toUpperCase(),
                          ),
                          size: Size(itemWidth, _keyHeight),
                          onPressed: () {
                            bloc.add(
                              KeyboardEvent.textEdited(
                                text: state.shiftState == ShiftState.off
                                    ? e.value.toLowerCase()
                                    : e.value.toUpperCase(),
                              ),
                            );
                          },
                        );
                      },
                    ).toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: row2.map(
                      (e) {
                        return KeyboardButton(
                          value: Text(
                            state.shiftState == ShiftState.off
                                ? e.key.toLowerCase()
                                : e.key.toUpperCase(),
                          ),
                          size: Size(itemWidth, _keyHeight),
                          onPressed: () {
                            bloc.add(
                              KeyboardEvent.textEdited(
                                text: state.shiftState == ShiftState.off
                                    ? e.value.toLowerCase()
                                    : e.value.toUpperCase(),
                              ),
                            );
                          },
                        );
                      },
                    ).toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      KeyboardButton(
                        value: Icon(
                          state.shiftState == ShiftState.off
                              ? Icons.arrow_downward
                              : Icons.arrow_upward,
                          color: state.shiftState == ShiftState.permanent
                              ? Colors.white
                              : null,
                          size: _iconSize,
                        ),
                        size: Size(itemWidth, _keyHeight),
                        background: state.shiftState == ShiftState.permanent
                            ? Colors.lightBlueAccent
                            : _highlightBG,
                        onPressed: () {
                          bloc.add(const KeyboardEvent.shirtPressed());
                        },
                      ),
                      ...row3.map(
                        (e) {
                          return KeyboardButton(
                            value: Text(
                              state.shiftState == ShiftState.off
                                  ? e.key.toLowerCase()
                                  : e.key.toUpperCase(),
                            ),
                            size: Size(itemWidth, _keyHeight),
                            onPressed: () {
                              bloc.add(
                                KeyboardEvent.textEdited(
                                  text: state.shiftState == ShiftState.off
                                      ? e.value.toLowerCase()
                                      : e.value.toUpperCase(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      KeyboardButton(
                        value: const Icon(
                          Icons.backspace,
                          size: _iconSize,
                        ),
                        size: Size(itemWidth, _keyHeight),
                        background: _highlightBG,
                        onPressed: () {
                          bloc.add(
                            const KeyboardEvent.textEdited(
                              text: KeyboardKeys.backspace,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: _keyMargin,
                      ),
                      KeyboardButton(
                        value: const Icon(
                          Icons.language,
                          size: _iconSize,
                        ),
                        size: Size(itemWidth, _keyHeight),
                        onPressed: () {
                          bloc.add(const KeyboardEvent.languagePressed());
                        },
                      ),
                      KeyboardButton(
                        value: const Text(','),
                        size: Size(itemWidth, _keyHeight),
                        onPressed: () {
                          bloc.add(const KeyboardEvent.textEdited(text: ','));
                        },
                      ),
                      Expanded(
                        child: KeyboardButton(
                          value: Text(state.language.space),
                          size: const Size.fromHeight(_keyHeight),
                          onPressed: () {
                            bloc.add(const KeyboardEvent.textEdited(text: ' '));
                          },
                        ),
                      ),
                      KeyboardButton(
                        value: const Text('.'),
                        size: Size(itemWidth, _keyHeight),
                        onPressed: () {
                          bloc.add(const KeyboardEvent.textEdited(text: '.'));
                        },
                      ),
                      KeyboardButton(
                        value: Text(state.language.submit),
                        size: Size(itemWidth, _keyHeight),
                        background: _highlightBG,
                        onPressed: () {
                          bloc.add(
                            const KeyboardEvent.textEdited(
                              text: KeyboardKeys.enter,
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        width: _keyMargin,
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class KeyboardButton extends StatelessWidget {
  const KeyboardButton({
    super.key,
    required this.value,
    required this.onPressed,
    required this.size,
    this.background,
  });

  final Widget value;
  final VoidCallback onPressed;
  final Color? background;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(_keyMargin),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: background ?? Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black45,
                spreadRadius: .2,
                blurRadius: 0.1,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(4),
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: onPressed,
              child: Align(
                alignment: Alignment.center,
                child: value,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

int maxList(List<int> list) {
  if (list.isEmpty) {
    throw Exception('List is empty');
  }

  var res = list.first;

  for (var i = 1; i < list.length; i++) {
    res = max(res, list[i]);
  }

  return res;
}
