import 'package:b4_ce145_lab12/services/world_time.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';


class ChooseLocation extends StatefulWidget {
// const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  List<WorldTime> locations = [
  WorldTime(location: 'kolkata', flag: 'india.png', url: 'Asia/kolkata'),
  WorldTime(location: 'Manila', flag: 'philippines.png', url: 'Asia/Manila'),
  WorldTime(location: 'Singapore', flag: 'singapore.png', url: 'Asia/Singapore'),
  WorldTime(location: 'Brisbane', flag: 'australia.png', url: 'Asia/Brisbane'),
  WorldTime(location: 'Madrid', flag: 'spain.png', url: 'Asia/Madrid'),
  WorldTime(location: 'Vienna', flag: 'austria.png', url: 'Asia/Vienna'),
  WorldTime(location: 'Maldives', flag: 'maldives.png', url: 'Asia/Maldives'),
  ];

  void updateTime(index) async{
    WorldTime instance = locations[index];
    await instance.getTime();

    Navigator.pop(context,{
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime' : instance.isDayTime,
    });
  }


  @override
  Widget build(BuildContext context) {

    print("Build function run in choose location...");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Choose location'),
        centerTitle: true,
        elevation: 0,
      ),

      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  print(locations[index].location);
                  updateTime(index);
              },
              title: Text(locations[index].location.toString()),
              leading: CircleAvatar(
                backgroundImage:  AssetImage('assets/flages/${locations[index].flag}'),
              ),
            )
            ),
          );
        }
      ),
      // body: ElevatedButton(
      //   onPressed: (){
      //     setState((){
      //       counter += 1;
      //     });
      //   },
      //   child: Text('Counter is : $counter'),
      // ),
    );
  }
}