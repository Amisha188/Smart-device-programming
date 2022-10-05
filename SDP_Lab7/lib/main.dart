import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: HomeScreen(),
),
);

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
        title: Text('Button Widget app'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[600],
        ),
      body: Center(
        // child: Image(
        //   //giving the image path to image property of image widget
        //   image: AssetImage('assets/sub_assets/dog2.jpg'),
        // ),

        // child: Icon(
        //   Icons.flutter_dash_outlined,
        //   color: Colors.blue[500],
        //   size: 100.0,
        // )

        // child: FlatButton(
        //   child: Text('click Me'),
        //   onPressed: (){
        //     print('print on console');
        //   },
        //   color: Colors.lightGreen[400],
        // ),

        // child: IconButton(
        //   icon: Icon(
        //   Icons.mail_outline_sharp,
        //   size: 30.0,
        //   ),
        //   tooltip: 'send mail me',
        //   onPressed: () {
        //     print('on console print');
        //   }
        //
        // ),
        // child: TextButton.icon(
        //   icon: Icon(
        //     Icons.photo_camera,
        //     color:Colors.greenAccent,
        //     size: 50.0,
        //   ),
        //   label: Text(
        //     "Gallery",
        //     style: TextStyle(
        //       color: Colors.orange[600],
        //       fontSize: 40.0,
        //       letterSpacing: 2.0,
        //       backgroundColor: Colors.blue[100],
        //     ),
        //     textAlign: TextAlign.start,
        //   ),
        //   onPressed: () {},
        // ),

        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextButton.icon(
            icon: Icon(
              Icons.photo_camera,
              color: Colors.grey[700],
              size: 50.0,
            ),
            label: Text(
              "Gallery",
              style: TextStyle(
                color: Colors.orange[600],
                fontSize: 40.0,
                letterSpacing: 2.0,
                backgroundColor: Colors.blue[100],
              ),
              textAlign: TextAlign.start,
            ),
            onPressed: () {},
            ),

        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, // must required property...
          // making change at here to test hot reloading..click --> clickme---> Click and ctrl + s
        child: Text('Click'),
        backgroundColor: Colors.deepOrange[600],
      ),


    );
  }
}