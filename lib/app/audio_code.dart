// Import the packages
import 'package:flutter/material.dart';
//import 'package:just_audio/just_audio.dart';

// Import the audio model file
import 'reusable_widgets/audio_model.dart';

// Create a list of audio models
final List<AudioModel> audios = [
  AudioModel(assetPath: 'assets/audio1.mp3', title: 'Audio 1'),
  AudioModel(assetPath: 'assets/audio2.mp3', title: 'Audio 2'),
  AudioModel(assetPath: 'assets/audio3.mp3', title: 'Audio 3'),
];

// Create a class for the home screen
class HomeScreen extends StatefulWidget {
  // Create a constructor
  const HomeScreen({Key? key}) : super(key: key);

  // Create a state
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// Create a class for the home screen state
class _HomeScreenState extends State<HomeScreen> {
  // Create a variable to store the current index
  int currentIndex = 0;

  // Create a method to load all the audios
  Future<void> loadAllAudios() async {
    for (AudioModel audio in audios) {
      await audio.loadAudio();
    }
  }

  // Create a method to initialize the state
  @override
  void initState() {
    super.initState();
    loadAllAudios();
  }

  // Create a method to dispose the state
  @override
  void dispose() {
    for (AudioModel audio in audios) {
      audio.dispose();
    }
    super.dispose();
  }

  // Create a method to build the widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              audios[currentIndex].title,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: () {
                    audios[currentIndex].playAudio();
                  },
                ),
                IconButton(
                  icon: Icon(Icons.pause),
                  onPressed: () {
                    audios[currentIndex].pauseAudio();
                  },
                ),
                IconButton(
                  icon: Icon(Icons.stop),
                  onPressed: () {
                    audios[currentIndex].stopAudio();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Audio 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Audio 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Audio 3',
          ),
        ],
      ),
    );
  }
}