import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

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
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                TextField(
                  controller: _address,
                  decoration: const InputDecoration(
                    hintText: 'PC Address',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                if (_error.isNotEmpty) ...[
                  Text(
                    _error,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView(
                          children: [
                            _Button(
                              onPressed: () {
                                _send([ControlKeys.volumeDown]);
                              },
                              child: const Icon(Icons.volume_down),
                            ),
                            _Button(
                              onPressed: () {
                                _send([ControlKeys.playPause]);
                              },
                              child: const Icon(Icons.play_arrow),
                            ),
                            _Button(
                              onPressed: () {
                                _send([ControlKeys.prevTrack]);
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
                                _send([ControlKeys.volumeUp]);
                              },
                              child: const Icon(Icons.volume_up),
                            ),
                            _Button(
                              onPressed: () {
                                _send([ControlKeys.volumeMute]);
                              },
                              child: const Icon(Icons.volume_mute),
                            ),
                            _Button(
                              onPressed: () {
                                _send([ControlKeys.nextTrack]);
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
            ),
          ),
        ),
      ),
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
