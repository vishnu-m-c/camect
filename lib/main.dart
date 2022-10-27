import 'package:flutter/material.dart';
import 'package:audio_wave/audio_wave.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 60,
        width: 300,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            visible
                ? Container(
              child:Center(
                child: Container(alignment: Alignment.centerLeft,
                  child: AudioWave(
                    height: 50,
                    width: 250,
                    spacing: 2.5,
                    bars: [
                      AudioWaveBar(heightFactor: .10, color: Colors.white),
                      AudioWaveBar(heightFactor: .30, color: Colors.white),
                      AudioWaveBar(heightFactor: .70, color: Colors.white),
                      AudioWaveBar(heightFactor: .40,color: Colors.white),
                      AudioWaveBar(heightFactor: .20, color: Colors.white),
                      AudioWaveBar(heightFactor: .10, color: Colors.white),
                      AudioWaveBar(heightFactor: .30, color: Colors.white),
                      AudioWaveBar(heightFactor: .70, color: Colors.white),
                      AudioWaveBar(heightFactor: .40,color: Colors.white),
                      AudioWaveBar(color: Colors.white, heightFactor: .20),
                      AudioWaveBar(heightFactor: .10, color: Colors.white),
                      AudioWaveBar(heightFactor: .30, color: Colors.white),
                      AudioWaveBar(heightFactor: .70, color: Colors.white),
                      AudioWaveBar(heightFactor: .40,color: Colors.white),
                      AudioWaveBar(heightFactor: .20, color: Colors.white),
                      AudioWaveBar(heightFactor: .10, color: Colors.white),
                      AudioWaveBar(heightFactor: .30, color: Colors.white),
                      AudioWaveBar(heightFactor: .70, color: Colors.white),
                      AudioWaveBar(heightFactor: .40,color: Colors.white),
                      AudioWaveBar(heightFactor: .20, color: Colors.white),
                      AudioWaveBar(heightFactor: .10, color: Colors.white),
                      AudioWaveBar(heightFactor: .30, color: Colors.white),
                      AudioWaveBar(heightFactor: .70, color: Colors.white),
                      AudioWaveBar(heightFactor: .40,color: Colors.white),
                      AudioWaveBar(heightFactor: .20, color: Colors.white),
                      AudioWaveBar(heightFactor: .10, color: Colors.white),
                      AudioWaveBar(heightFactor: .30, color: Colors.white),
                      AudioWaveBar(heightFactor: .70, color: Colors.white),
                      AudioWaveBar(heightFactor: .40,color: Colors.white),
                      AudioWaveBar(heightFactor: .20, color: Colors.white),
                      AudioWaveBar(heightFactor: .10, color: Colors.white),
                      AudioWaveBar(heightFactor: .30, color: Colors.white),
                      AudioWaveBar(heightFactor: .70, color: Colors.white),
                      AudioWaveBar(heightFactor: .40,color: Colors.white),
                      AudioWaveBar(heightFactor: .20, color: Colors.white),
                      AudioWaveBar(heightFactor: .10, color: Colors.white),
                    ],
                  ),
                ),
              ),
                    height: 60,
                    width: 300,
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                        color: Colors.teal.shade900,
                        borderRadius: BorderRadius.circular(50)),
                  )
                : Container(
                    height: 0,
                  ),
            Container(
              height: 55,
              width: 55,
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: visible ? Colors.white : Colors.greenAccent,
                  borderRadius: BorderRadius.circular(50)),
              child: InkWell(
                onLongPress: () {
                  setState(() {
                    visible = !visible;
                  });
                },
                child: Icon(
                  Icons.mic_none_outlined,
                  size: 30,
                  color: visible ? Colors.black : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
