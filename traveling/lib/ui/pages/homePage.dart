import '../../data/bloc/locationBloc.dart';
import '../../data/bloc/provider.dart';
import '../../ui/customWidgets/tripCard.dart';
import '../../data/model/location.dart';
import 'package:flutter/material.dart';
import '../../ui/customWidgets/popularIcon.dart';
import '../../ui/customWidgets/placeImage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          flexibleSpace: Padding(
            padding: EdgeInsets.only(left: 25, top: height * 0.06),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/abraham.jpg'),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Discover World',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          bottom: PreferredSize(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                      padding: EdgeInsets.all(10),
                      onPressed: () {},
                      child: Text(
                        'Popular',
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Color(0xFF2d84cc)),
                  RaisedButton(
                    padding: EdgeInsets.all(10),
                    elevation: 0.1,
                    onPressed: () {},
                    child: Text(
                      'Exclusive Tutor',
                      style: TextStyle(color: Colors.black12),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.white70,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(10),
                    elevation: 0.1,
                    onPressed: () {},
                    child: Text(
                      'New',
                      style: TextStyle(color: Colors.black12),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.white70,
                  )
                ],
              ),
              preferredSize: MediaQuery.of(context).size),
          toolbarHeight: MediaQuery.of(context).size.height * 0.26,
        ),
        body: BlocProvider(
            blocFactory: () => LocationBloc(),
            builder: (BuildContext context, LocationBloc bloc) {
              return ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 30),
                    height: 230,
                    child: StreamBuilder(
                      stream: bloc.locationStream,
                      builder: (BuildContext context,
                          AsyncSnapshot<List<Location>> snapShot) {
                        return ListView.builder(
                          itemCount: snapShot.data.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return PlaceImage(location: snapShot.data[index]);
                          },
                        );
                      },
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Text(
                                'Popular Category',
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                'more',
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            PopularIcon(
                              icon: Icons.festival,
                              title: 'Festival',
                            ),
                            PopularIcon(
                              icon: Icons.mic,
                              title: 'Concert',
                            ),
                            PopularIcon(
                              icon: Icons.tour,
                              title: 'Tour',
                            ),
                            PopularIcon(
                              icon: Icons.directions_boat,
                              title: 'Cruise',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 30),
                    child: StreamBuilder(
                      stream: bloc.locationStream,
                      builder: (BuildContext context,
                          AsyncSnapshot<List<Location>> snapshot) {
                        return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return index == 0
                                ? Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      'More Trips For You',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  )
                                : TripCard(
                                    location: snapshot.data[index],
                                  );
                          },
                        );
                      },
                    ),
                  )
                ],
              );
            }));
  }
}
