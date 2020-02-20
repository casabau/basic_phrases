import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    final AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

    final List<String> list = <String>[
      'oamenii',
      'de_acelasi_sex',
      'daca',
      'se_iubesc',
      'sunt',
      'gay',
      'cu',
      'spume',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Let\'s translate this'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        children: <Widget>[
          for (int i = 0; i <= 7; i++)
            InkWell(
              onTap: () {
                assetsAudioPlayer.open('res/${list[i]}.mp3');
                // ignore: cascade_invocations
                assetsAudioPlayer.play();
              },
              child: Container(
                alignment: AlignmentDirectional.center,
                color: Colors.pink,
                child: Text(
                  list[i],
                  style: const TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
