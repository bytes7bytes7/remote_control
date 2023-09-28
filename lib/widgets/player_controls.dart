import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/player/player_bloc.dart';
import '../bloc/signal/signal_bloc.dart';
import 'circle_button.dart';

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
        return Center(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleButton(
                    onPressed: () {
                      bloc.add(const PlayerEvent.previousPressed());
                    },
                    icon: Icons.skip_previous,
                  ),
                  CircleButton(
                    onPressed: () {
                      bloc.add(const PlayerEvent.playPausePressed());
                    },
                    icon: Icons.play_arrow,
                  ),
                  CircleButton(
                    onPressed: () {
                      bloc.add(const PlayerEvent.nextPressed());
                    },
                    icon: Icons.skip_next,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleButton(
                    onPressed: () {
                      bloc.add(const PlayerEvent.volumeDownPressed());
                    },
                    icon: Icons.volume_down,
                    size: CircleButtonSize.small,
                  ),
                  CircleButton(
                    onPressed: () {
                      bloc.add(const PlayerEvent.volumeUpPressed());
                    },
                    icon: Icons.volume_up,
                    size: CircleButtonSize.small,
                  ),
                ],
              ),
              CircleButton(
                onPressed: () {
                  bloc.add(const PlayerEvent.mutePressed());
                },
                icon: Icons.volume_off,
                size: CircleButtonSize.small,
              ),
            ],
          ),
        );
      },
    );
  }
}
