import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../services/world_time.dart';


class Loading extends StatefulWidget {
// const Loading({Key? key}) : super(key: key);
  @override
  State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {

  void getData() async {
    final response = await
    get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    print(response.body);
    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
  }

//   void getTime() async {
//
//     // Make Request for time and receive response
//     Response response = await
//     get(Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Kolkata'));
//     Map timeData = jsonDecode(response.body);
//     print(timeData);
//     // Get particular property form timeData...
//     String dateTime = timeData['datetime'];
//     String offset = timeData['utc_offset']; //not dst_offset
//     print(dateTime);
//     print(offset);
//     DateTime currentTime = DateTime.parse(dateTime);
//     print(currentTime);
// /*
//  DateTime currentOffset = DateTime.parse(offset);
//  print(currentOffset);
// */
//     String offsetHours = offset.substring(1,3);
//     print(offsetHours);
//     String offsetMinutes = offset.substring(4,6);
//     print(offsetMinutes);
//     currentTime = currentTime.add(Duration(minutes: int.parse(offsetMinutes),
//         hours:int.parse(offsetHours)));
//     print(currentTime);
//   }

  String? time = 'LOADING..........';

  void setWorldTime() async{

    WorldTime timeinstance =
        WorldTime(location: 'kolkata', flag: 'india.png', url: 'Asia/kolkata');
    await timeinstance.getTime();

    setState((){
      time = timeinstance.time;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setWorldTime();
    // getTime();
    // print('INIT STATE FUNCTION RUN IN CHOOSE LOCATION...');
    // print('before getData call');
    // getData();
    // print('after getData call');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Text(time.toString()),
      ),
      // body: SafeArea(
      //   child: Column(
      //       children: [
      //         TextButton.icon(
      //           onPressed: (){
      //             Navigator.pushNamed(context, '/home');
      //           },
      //           icon: Icon(Icons.downloading),
      //           label: Text('Loading page'),
      //         )
      //       ]
      //   ),
      // ),
    );
  }
}
