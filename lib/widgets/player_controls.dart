import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/player/player_bloc.dart';
import '../bloc/signal/signal_bloc.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({super.key});

  @override
  Widget build(BuildContext context) {
    final signalBloc = context.read<SignalBloc>();

    return BlocProvider(
      create: (context) => PlayerBloc(signalBloc),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PlayerBloc>();

    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        _Button(
                          onPressed: () {
                            bloc.add(const PlayerEvent.volumeDownPressed());
                          },
                          child: const Icon(Icons.volume_down),
                        ),
                        _Button(
                          onPressed: () {
                            bloc.add(const PlayerEvent.playPausePressed());
                          },
                          child: const Icon(Icons.play_arrow),
                        ),
                        _Button(
                          onPressed: () {
                            bloc.add(const PlayerEvent.previousPressed());
                          },
                          child: const Icon(Icons.skip_previous),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        _Button(
                          onPressed: () {
                            bloc.add(const PlayerEvent.volumeUpPressed());
                          },
                          child: const Icon(Icons.volume_up),
                        ),
                        _Button(
                          onPressed: () {
                            bloc.add(const PlayerEvent.mutePressed());
                          },
                          child: const Icon(Icons.volume_mute),
                        ),
                        _Button(
                          onPressed: () {
                            bloc.add(const PlayerEvent.nextPressed());
                          },
                          child: const Icon(Icons.skip_next),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    required this.onPressed,
    required this.child,
  });

  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: SizedBox.square(
        dimension: 70,
        child: ElevatedButton(
          onPressed: onPressed,
          child: child,
        ),
      ),
    );
  }
}
