import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ControlKeys {
  static const volumeUp = 'volumeup';
  static const volumeDown = 'volumedown';
  static const volumeMute = 'volumemute';
  static const playPause = 'playpause';
  static const nextTrack = 'nexttrack';
  static const prevTrack = 'prevtrack';
}

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

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _address = TextEditingController();
  final _dio = Dio();
  var _error = '';

  @override
  void dispose() {
    _address.dispose();

    super.dispose();
  }

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

  Future<void> _send(List<String> keys) async {
    final url = 'http://${_address.text}/';

    try {
      await _dio.post(
        url,
        data: {
          'keys': keys,
        },
      );

      _error = '';
    } catch (e) {
      _error = 'Ошибка';
    }
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
