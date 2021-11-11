import '../../data/bloc/locationBloc.dart';
import '../../data/bloc/provider.dart';
import '../../data/model/location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../ui/pages/tripPage.dart';

class LocationPage extends StatelessWidget {
  final Location location;

  LocationPage({
    @required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: Stack(children: [
          Container(
            margin: EdgeInsets.all(0),
            decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage(location.url), fit: BoxFit.cover)),
            child: Stack(children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 45),
                  child: Container(
                    child: IconButton(
                        icon: Icon(Icons.arrow_back, color: Color(0xff939599)),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    decoration:
                    BoxDecoration(color: Color(0xaaf2f3f8),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20, top: 45),
                  child: Container(
                    child: IconButton(
                        icon: Icon(
                          Icons.share,
                          color: Color(0xff939599),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    decoration:
                    BoxDecoration(color: Color(0xaaf2f3f8),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),
            ]),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding: EdgeInsets.only(left: 25, top: 20, bottom: 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Icon(Icons.star, color: Color(0xfff5d06f)),
                        Text(' ${location.stars} ', style: TextStyle(
                            color: Color(0xfff5d06f))),
                        Text('(127)', style: TextStyle(color: Colors.black45))
                      ]),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10, top: 10),
                        child: Text(
                          location.placeName,
                          style: TextStyle(fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.black45,
                            ),
                          ),
                          Text(
                            location.location,
                            style: TextStyle(color: Colors.black45),
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 20, bottom: 90),
              child: Card(
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: IconButton(
                      icon: Icon(
                        Icons.stars,
                        color: Colors.deepPurple,
                        size: 30,
                      ),
                      onPressed: () {},
                    )),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          )
        ]),
        toolbarHeight: 350,
      ),
      body: BlocProvider(blocFactory: ()=>LocationBloc(), builder: (BuildContext context, LocationBloc bloc){
        return Padding(
          padding: EdgeInsets.only(left: 25, right: 20, bottom: 70),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 25),
                child: Row(
                  children: [
                    Text(
                      '\$350',
                      style: TextStyle(color: Colors.lightBlue, fontSize: 22),
                    ),
                    Text(
                      '/person',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery
                          .of(context)
                          .size
                          .width * 0.16),
                    ),
                    RaisedButton.icon(
                        onPressed: () {},
                        color: Color(0xff2a78e8),
                        padding: EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        icon: Icon(
                          Icons.access_time,
                          color: Colors.white,
                        ),
                        label: Text(
                          '4 days 3 nights',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  'Description',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "The Lincoln Memorial stands at the west end of the National Mall as a neoclassical monument to the 16th President. The memorial, designed by Henry Bacon, after ancient Greek temples, stands 190 feet long, 119 feet wide, and almost 100 feet high. It is surrounded by a peristyle of 36 fluted Doric columns, one for each of the thirty six states in the Union at the time of Lincoln's death, and two columns in-antis at the entrance behind the colonnade.",
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 50),
                child: Text(
                  'Destination Photos',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              StreamBuilder(
                  stream: bloc.locationStream,
                  builder: (BuildContext context, AsyncSnapshot<List<Location>> snapShot){
                    return GridView.builder(
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.all(5),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(snapShot.data[index].url), fit: BoxFit.cover),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                        );
                      },
                      gridDelegate: null,
                    );
                  })
            ],
          ),
        );
      }),
      bottomSheet: Card(
          margin: EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: CupertinoButton(
                  padding: EdgeInsets.only(
                      left: 120, right: 120, bottom: 15, top: 15),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return TripPage(
                            location: location,
                          );
                        }));
                  },
                  child: Text(
                    'Choose This',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color(0xff2a78e8),
                ),
              ),
            ],
          )),
    );
  }

}
