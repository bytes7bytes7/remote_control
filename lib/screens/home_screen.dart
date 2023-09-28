import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/signal/signal_bloc.dart';
import '../widgets/keyboard_controls.dart';
import '../widgets/player_controls.dart';
import '../widgets/shortcut_controls.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Remote Control'),
        ),
        body: const SafeArea(
          child: _Body(),
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SignalBloc>();

    return BlocBuilder<SignalBloc, SignalState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  TextField(
                    onChanged: (v) {
                      bloc.add(SignalEvent.addressUpdated(address: v));
                    },
                    decoration: const InputDecoration(
                      hintText: 'PC Address',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (state.error.isNotEmpty) ...[
                    Text(
                      state.error,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ],
              ),
            ),
            TabBar.secondary(
              controller: _tabController,
              isScrollable: true,
              tabs: const [
                Tab(
                  text: 'Player',
                ),
                Tab(
                  text: 'Keyboard',
                ),
                Tab(
                  text: 'Shortcuts',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  PlayerControls(),
                  KeyboardControls(),
                  ShortcutControls(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
