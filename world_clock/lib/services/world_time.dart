import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // location name for UI
  String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint
  bool isDaytime; // true or false if daytime or not

  WorldTime(
      {this.location = "",
      this.flag = "",
      this.url = "",
      this.time = "",
      this.isDaytime = true});

  Future<void> getTime() async {
    try {
      Response response = await get(
          Uri.parse('http://worldtimeapi.org/api/timezone/Europe/Berlin'));
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;

      time = DateFormat.jm().format(now);
    } catch (e) {
      print("CAUGHT ERROR: $e");
      time = 'Could not get time data right now';
    }
  }
}
