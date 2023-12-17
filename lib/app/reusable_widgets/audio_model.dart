// Import the packages
import 'package:just_audio/just_audio.dart';

// Create a class for the audio model
class AudioModel {
  // Declare the variables
  final String assetPath;
  final String title;
  final AudioPlayer player;

  // Create a constructor
  AudioModel({required this.assetPath, required this.title})
      : player = AudioPlayer();

  // Create a method to load the audio from the asset
  Future<void> loadAudio() async {
    await player.setAsset(assetPath);
  }

  // Create a method to play the audio
  void playAudio() {
    player.play();
  }

  // Create a method to pause the audio
  void pauseAudio() {
    player.pause();
  }

  // Create a method to stop the audio
  void stopAudio() {
    player.stop();
  }

  // Create a method to dispose the audio player
  void dispose() {
    player.dispose();
  }
}