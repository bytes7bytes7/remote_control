import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/signal/signal_bloc.dart';

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
        body: SafeArea(
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
            Flexible(
              child: TextField(
                onChanged: (v) {
                  bloc.add(SignalEvent.addressUpdated(address: v));
                },
                decoration: const InputDecoration(
                  hintText: 'PC Address',
                ),
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
            TabBar.secondary(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Overview'),
                Tab(text: 'Specifications'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Card(
                    margin: const EdgeInsets.all(16.0),
                    child: Center(child: Text('Overview tab')),
                  ),
                  Card(
                    margin: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text('Specifications tab'),
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
