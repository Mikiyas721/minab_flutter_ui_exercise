import 'package:Traveling/data/sample.dart';

import '../../data/model/location.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';

class LocationBloc {
  BehaviorSubject<List<Location>> locationStream = GetIt.instance.get();

  void loadLocations() {
    List<Location> locations = [];
    places.forEach((element) {
      locations.add(Location(
          stars: element['stars'],
          url: element['url'],
          location: element['location'],
          placeName: element['placeName'],
          cost: element['cost'],
          days: element['days']));
    });
    locationStream.add(locations);
  }

  void dispose() {
    locationStream.close();
  }
}
