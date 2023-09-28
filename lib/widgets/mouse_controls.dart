import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/mouse/mouse_bloc.dart';
import '../bloc/signal/signal_bloc.dart';

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
        return Column(
          children: [
            Slider(
              value: state.sensitivity,
              min: 1,
              max: 100,
              onChanged: (v) {
                bloc.add(MouseEvent.sensitivityUpdated(value: v));
              },
            ),
            Expanded(
              child: GestureDetector(
                onPanUpdate: (e) {
                  bloc.add(MouseEvent.moved(dx: e.delta.dx, dy: e.delta.dy));
                },
                child: const Card(
                  child: Center(
                    child: Text('TouchPad'),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
