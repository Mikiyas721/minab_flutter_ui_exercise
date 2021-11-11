import 'package:flutter/material.dart';
import '../../ui/customWidgets/myNavBar.dart';
import '../../ui/pages/playerPage.dart';
import '../../data/models/album.dart';
import '../../data/models/music.dart';
import '../../data/sample.dart';
import '../../ui/customWidgets/recentTrack.dart';
import '../../ui/customWidgets/myListTile.dart';
import '../../ui/customWidgets/albumCard.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPlaying;
  Music music;

  @override
  void initState() {
    isPlaying = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff121212),
        leadingWidth: 60,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/1.jpg'),
          ),
        ),
        title: Text('data'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  setState(() {
                    isPlaying = false;
                  });
                }),
          )
        ],
      ),
      body: Stack(children: [
        Positioned(
            left: 15,
            right: 15,
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 30),
                      height: 250,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: albums.length,
                        itemBuilder: (BuildContext context, int index) {
                          return AlbumCard(
                            album: Album.fromJSON(albums[index]),
                          );
                        },
                      ),
                    ),
                    Text(
                      'Recently Listened',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12, bottom: 10),
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: albums.length,
                        itemBuilder: (BuildContext context, int index) {
                          return RecentTrack(
                            album: Album.fromJSON(albums[index]),
                          );
                        },
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        '2020 Wrapped',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      subtitle: Text(
                        'Your Top Songs & Missed Hits',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      trailing: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'More',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Color(0xff333333),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(35))),
                      ),
                    ),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: musics.length,
                        itemBuilder: (BuildContext context, int index) {
                          return MyListTile(
                              music: Music.fromJSON(musics[index]),
                              onTap: (Music music) {
                                setState(() {
                                  isPlaying = true;
                                  this.music = music;
                                });
                              });
                        })
                  ],
                ),
              ),
            )),
        Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: isPlaying
                ? Container(
                    height: MediaQuery.of(context).size.height * 0.88,
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: DraggableScrollableSheet(
                              initialChildSize: 0.2,
                              minChildSize: 0.2,
                              maxChildSize: 1,
                              builder: (BuildContext context,
                                  ScrollController scrollController) {
                                return PlayerPage(
                                  music: music,
                                  controller: scrollController,
                                );
                              },
                            )),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: MyNavBar())
                      ],
                    ),
                  )
                : MyNavBar())
      ]),
    );
  }
}
