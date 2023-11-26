import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Reel extends StatefulWidget {
  const Reel({super.key});

  @override
  State<Reel> createState() => _ReelState();
}

class _ReelState extends State<Reel> {
  late VideoPlayerController _videoPlayerController;
  late Future<void> _initializeVideoPlayerFuture;
  int _volume = 0;
  IconData _currentIcon = Icons.volume_up_outlined;
  bool _showContainer = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _videoPlayerController = VideoPlayerController.asset("assets/insta.mp4");
    _initializeVideoPlayerFuture = _videoPlayerController.initialize();
    _videoPlayerController.play();
    _videoPlayerController.setLooping(true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _videoPlayerController.dispose();
  }

  void _VolumeUp(int i) {
    setState(() {
      if (i == 1) {
        _currentIcon = Icons
            .volume_off_outlined; // Change this to the icon you want to display
      } else {
        _currentIcon = Icons.volume_up_outlined;
      }
      _showContainer = true;
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _showContainer = false;
        if (i == 1) {
          _currentIcon = Icons
              .volume_off_outlined; // Change this to the icon you want to display
        } else {
          _currentIcon = Icons.volume_up_outlined;
        } // Change this to the icon you want to display after 2 seconds
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: GestureDetector(
        onLongPressStart: (LongPressStartDetails details) {
          setState(() {
            _videoPlayerController.pause();
          });
        },
        onLongPressEnd: (LongPressEndDetails details) {
          setState(() {
            _videoPlayerController.play();
          });
        },
        onTap: () {
          setState(() {
            if (_volume == 1) {
              _videoPlayerController.setVolume(0);
              _VolumeUp(1);
              _volume = 0;
            } else {
              _videoPlayerController.setVolume(50);
              _VolumeUp(0);
              _volume = 1;
            }
          });
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return AspectRatio(
                    aspectRatio: _videoPlayerController.value.aspectRatio,
                    child: VideoPlayer(_videoPlayerController),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            Positioned(
              top: mediaQueryData.size.height * 0.05,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: mediaQueryData.size.width * 0.04,
                  ),
                  const Text(
                    "Reels",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: mediaQueryData.size.width * 0.65,
                  ),
                  IconButton(
                    icon: const Icon(Icons.camera_alt_rounded,
                        size: 30, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Positioned(
                top: mediaQueryData.size.height * 0.5,
                left: mediaQueryData.size.width * 0.85,
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                          size: 32,
                          color: Colors.white,
                        )),
                    const Text(
                      "30.2k",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      "assets/chatb.png",
                      width: 30,
                      height: 30,
                    ),
                    const Text(
                      "5234",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      "assets/send.png",
                      width: 30,
                      height: 30,
                    ),
                    const Text(
                      "2345",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          size: 33,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: mediaQueryData.size.width * 0.08,
                      height: mediaQueryData.size.height * 0.04,
                      color: Colors.white,
                    )
                  ],
                )),
            Positioned(
                top: mediaQueryData.size.height * 0.78,
                child: Row(
                  children: [
                    SizedBox(
                      width: mediaQueryData.size.width * 0.02,
                    ),
                    const CircleAvatar(
                      radius: 25,
                    ),
                    SizedBox(
                      width: mediaQueryData.size.width * 0.02,
                    ),
                    const Text(
                      "Name",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: mediaQueryData.size.width * 0.02,
                    ),
                    Container(
                      width: mediaQueryData.size.width * 0.2,
                      height: mediaQueryData.size.height * 0.04,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Follow",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )),
            Positioned(
                top: mediaQueryData.size.height * 0.45,
                left: mediaQueryData.size.width * 0.45,
                child: _showContainer?Container(
                  width: mediaQueryData.size.width * 0.14,
                  height: mediaQueryData.size.height * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.shade400),
                  child: Icon(
                    _currentIcon,
                    color: Colors.white,
                    size: 28,
                  ),
                ):const SizedBox())
          ],
        ),
      ),
    );
  }
}
