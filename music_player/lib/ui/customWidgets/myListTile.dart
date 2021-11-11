import 'package:flutter/material.dart';
import '../../data/models/music.dart';

class MyListTile extends StatelessWidget {
  final Music music;
  final void Function(Music music) onTap;

  MyListTile({@required this.music,@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        onTap(music);
      },
      contentPadding: EdgeInsets.all(0),
      leading: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xff333333)),
        child: Icon(
          Icons.music_note,
          color: Color(0xff7a7a7a),
        ),
      ),
      title: Text(
        music.musicName,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 21),
      ),
      subtitle: Text(
        music.singerName,
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              icon: Icon(
                Icons.star,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
    );
  }
}
