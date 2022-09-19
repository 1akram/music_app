import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicWidget());
}

class MusicWidget extends StatelessWidget {
  MusicWidget({Key? key}) : super(key: key);
  final player = AudioPlayer();
  Expanded musicBtn({String? btnName, int? audioNumber, Color? btnColor}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.5),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
          ),
          onPressed: () {
            player.play(AssetSource('music-$audioNumber.mp3'));
          },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 1.0,left: 5.0),
                child: Icon(
                  Icons.music_note,
                  color: btnColor,
                ),
              ),
              Text('$btnName', style: TextStyle(color: btnColor, fontSize: 20.0)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('نغمات'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            musicBtn(btnName: 'بطاطة', audioNumber: 1, btnColor: Colors.red),
            musicBtn(btnName: 'اكرم', audioNumber: 2, btnColor: Colors.blue),
            musicBtn(btnName: 'سلاذة', audioNumber: 3, btnColor: Colors.yellow),
            musicBtn(btnName: 'اشرف', audioNumber: 4, btnColor: Colors.green),
            musicBtn(btnName: 'محمحد', audioNumber: 5, btnColor: Colors.grey),
            musicBtn(btnName: 'بلا لا لا', audioNumber: 6, btnColor: Colors.orange),
            musicBtn(btnName: 'يوكات ', audioNumber: 7, btnColor: Colors.brown),
          ],
        ),
      ),
    );
  }
}
