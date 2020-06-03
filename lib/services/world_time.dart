import "package:http/http.dart";
import "dart:convert";
import "package:intl/intl.dart";

class WorldTime {

  String location; // location name for the UI
  String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint

  WorldTime({ this.location, this.flag, this.url });

  Future<void> getTime() async {
    
    try {
      // make request;
      Response response = await get("http://worldtimeapi.org/api/timezone/$url");

      Map data = jsonDecode(response.body);
      //print(data);

      // get properties from data
      String datetime = data["datetime"];
      String offset = data["utc_offset"].substring(1, 3);
      //print(datetime);
      //print(offset);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      now.add(Duration(hours: int.parse(offset)));
    
      // set time property
      time = DateFormat.jm().format(now);
    } catch (e) {
      print("Caught error: $e");
      time = "Could not get time data";
    }
  }
}