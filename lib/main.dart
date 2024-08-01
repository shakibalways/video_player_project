import 'package:flutter/material.dart';
import 'package:youtube_video_player_app/view/screen/videio_player_project.dart';
void main()async{
 await WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  YoutubeVideoPlayer(),
    );
  }
}
