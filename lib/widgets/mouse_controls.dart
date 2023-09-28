import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/mouse/mouse_bloc.dart';
import '../bloc/signal/signal_bloc.dart';
import '../models/mouse_buttons.dart';

class MouseControls extends StatelessWidget {
  const MouseControls({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SignalBloc>();

    return BlocProvider(
      create: (context) => MouseBloc(bloc),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MouseBloc>();

    return BlocBuilder<MouseBloc, MouseState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text('Sensitivity'),
              Slider(
                value: state.sensitivity,
                min: 1,
                max: 50,
                onChanged: (v) {
                  bloc.add(MouseEvent.sensitivityUpdated(value: v));
                },
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      flex: 5,
                      child: GestureDetector(
                        onPanUpdate: (e) {
                          bloc.add(
                            MouseEvent.moved(
                              dx: e.delta.dx,
                              dy: e.delta.dy,
                            ),
                          );
                        },
                        child: const Card(
                          child: Center(
                            child: Text('TouchPad'),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              child: InkWell(
                                onTap: () {
                                  bloc.add(
                                    const MouseEvent.pressed(
                                      button: MouseButtons.left,
                                    ),
                                  );
                                },
                                child: const Center(
                                  child: Text('L'),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              child: InkWell(
                                onTap: () {
                                  bloc.add(
                                    const MouseEvent.pressed(
                                      button: MouseButtons.right,
                                    ),
                                  );
                                },
                                child: const Center(
                                  child: Text('R'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
