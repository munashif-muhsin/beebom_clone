import 'dart:async';
import 'package:beebom_clone/models/video_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {

  final VideoItem videoData;
  VideoPage(this.videoData);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  double minModalHeight = 150;
  double maxModalHeight;
  double modalHeight = 0;
  double dragPosition = 0;
  double dragStartPosition;
  bool isModalOpen = false;

  StreamController<double> controller = StreamController.broadcast();

  VideoPlayerController videoController;

  @override
  void initState() {
    super.initState();
    modalHeight = minModalHeight;
    videoController = VideoPlayerController.asset('assets/sam_smith.mp4')
      ..initialize();
  }

  void _onDragEnd(DragEndDetails endDetails) {
    if (dragStartPosition < dragPosition) {
      controller.add(maxModalHeight);
      videoController.pause();
      isModalOpen = true;
    } else {
      isModalOpen = false;
      controller.add(minModalHeight);
      videoController.play();
    }
  }

  Widget _buildArticleWidget() {
    return Expanded(
      child: SingleChildScrollView(
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem IpsumLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem IpsumLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem IpsumLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem IpsumLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
          style: TextStyle(fontSize: 18.0, height: 1.2, letterSpacing: 0.1),
        ),
      ),
    );
  }

  Widget _buildBottomSheetChild(AsyncSnapshot snapshot) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '${widget.videoData.name}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 19.0,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 1,
        ),
        SizedBox(height: 15.0),
        Row(
          children: <Widget>[
            GestureDetector(
              child: Icon(Icons.bookmark_border),
              onTap: () {},
            ),
            SizedBox(width: 10.0),
            GestureDetector(
              child: Icon(Icons.share),
              onTap: () {},
            ),
            Spacer(),
            GestureDetector(
              child: Row(
                children: <Widget>[
                  Icon(Icons.favorite_border),
                  SizedBox(width: 5.0),
                  Text(
                    '137',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              onTap: () {},
            ),
            SizedBox(width: 10.0),
            GestureDetector(
              child: Row(
                children: <Widget>[
                  Icon(Icons.chat_bubble_outline),
                  SizedBox(width: 5.0),
                  Text(
                    '17',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
        SizedBox(height: 20.0),
        AnimatedContainer(
          curve: Curves.easeOut,
          duration: Duration(milliseconds: 200),
          height: snapshot.hasData && isModalOpen ? snapshot.data - 97 : 53,
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 19.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              isModalOpen
                  ? Icon(Icons.keyboard_arrow_down)
                  : Icon(Icons.keyboard_arrow_up),
              isModalOpen ? _buildArticleWidget() : Container(),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildBasicBottomSheetSetup() {
    maxModalHeight = MediaQuery.of(context).size.height * 0.8;
    return BottomSheet(
      onClosing: () {},
      enableDrag: true,
      builder: (BuildContext context) {
        return GestureDetector(
          onVerticalDragStart: (details) {
            dragStartPosition =
                MediaQuery.of(context).size.height - details.globalPosition.dy;
          },
          onVerticalDragUpdate: (details) {
            dragPosition =
                MediaQuery.of(context).size.height - details.globalPosition.dy;
            if (dragPosition < minModalHeight) {
              controller.add(minModalHeight);
            } else if (dragPosition > maxModalHeight) {
              controller.add(maxModalHeight);
            } else {
              controller.add(dragPosition);
            }
          },
          onVerticalDragEnd: (details) => _onDragEnd(details),
          child: StreamBuilder<double>(
              stream: controller.stream,
              builder: (context, snapshot) {
                return AnimatedContainer(
                  curve: Curves.easeOut,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
                  duration: Duration(milliseconds: 200),
                  height: snapshot.hasData ? snapshot.data : minModalHeight,
                  color: Colors.black.withOpacity(0),
                  child: _buildBottomSheetChild(snapshot),
                );
              }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    videoController.play();
    videoController.setLooping(true);
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.0),
          elevation: 0,
        ),
        body: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              ConstrainedBox(
                constraints: BoxConstraints.loose(
                  Size.fromWidth(MediaQuery.of(context).size.width),
                ),
                child: Transform.scale(
                  child: AspectRatio(
                    aspectRatio: 9 / 16,
                    child: VideoPlayer(videoController),
                  ),
                  scale: 1.3,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50,
                height: MediaQuery.of(context).size.height,
                child: GestureDetector(
                  onTap: () {
                    videoController.value.isPlaying
                        ? videoController.pause()
                        : videoController.play();
                  },
                ),
              ),
            ],
          ),
        ),
        bottomSheet: _buildBasicBottomSheetSetup(),
      ),
    );
  }

  @override
  void dispose() {
    videoController.dispose();
    controller.close();
    super.dispose();
  }
}
