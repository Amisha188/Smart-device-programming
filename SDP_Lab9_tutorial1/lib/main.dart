import 'package:flutter/material.dart';
import 'package:sdp_lab9_ce145/quote.dart';
import 'package:sdp_lab9_ce145/quote_card.dart';

void main() => runApp(MaterialApp(
  home: EchoList(),
));


class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  // List<String> quotes = [
  //   'The truth is realy pure and never simple',
  //   'I see humans but no humanity',
  //   'The time is always right to do what is right'
  // ];

  List<Quote> quotes = [
    Quote(text: 'The truth is realy pure and never simple', author: 'Ram'),
    Quote(author: 'Ram2', text: 'I see humans but no humanity'),
    Quote(text: 'The time is always right to do what is right',author:
    'Ram'),
  ];

  // Widget quoteTemplate(quote){
  //   return QuoteCard(quote: quote,);
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        //calling object directly insted of function
        children: quotes.map((quote) =>
          QuoteCard(quote: quote,
          delete: (){
            setState((){
              quotes.remove(quote);
            });
          },)
        ).toList(),
      ),
    );
  }
}





/*
void main() => runApp(MaterialApp(
  home: FinalTest1(),
));

class FinalTest1 extends StatefulWidget{

  @override
  State<FinalTest1> createState() => _FinalTest1State();
}

class _FinalTest1State extends State<FinalTest1> {

  num age = 73.0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
        //for the shadow
        elevation:0.0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // age++; // this will not change variable state value
          setState((){
            age += 1;
          });
        },

        child: Icon(Icons.add),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        // padding from all side
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Bound border of the image with circle
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/dog3.jpg'),
                    maxRadius: 50,
                  ),
                ),
                Text(
                  'NAME: ',
                  style: TextStyle(
                    color: Colors.grey[800],
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'George Fernandes',
                  style: TextStyle(
                    color: Colors.blue[900],
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'AGE',
                  style: TextStyle(
                    color: Colors.grey[800],
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '$age',
                  style: TextStyle(
                    color: Colors.blue[900],
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Icon(
                      Icons.email_rounded,
                      color: Colors.blue[800],
                    ),
                    SizedBox(width: 12.0),
                    Text(
                      'georgeferd.ce@ddu.ac.in',
                      style: TextStyle(
                        color: Colors.brown[800],
                        fontSize: 16.0,
                        letterSpacing: 1.5,
                      ),
                    )
                  ],
                ),
            ],
          ),
      ),
    );
  }
}
*/
// //test1 => is state full class which creates object of 'state' widget...
// class Test1 extends StatefulWidget{
//   const Test1({Key? key}) : super(key: key);
//
//   @override
//   State<Test1> createState() => _Test1State();
// }
//
// //following class create a state objects for above state full widget
// //in this class we can define data which can changes their states
// class _Test1State extends State<Test1>{
//
//   @override
//   Widget build(BuildContext context){
//     return Container();
//   }
// }





// code1
// void main() => runApp(MaterialApp(
//   home: Scaffold(
//
//     // body:
//     // // only for padding purpose....
//     // // instead of container we can directly used the padding widget...
//     // // it can't support marging, color..etc....
//     // // // for both and other we can use container widget
//     //
//     // Padding(
//     //   padding: EdgeInsets.all(80),
//     //   child: Text("Hello only padding."),
//     // ),
//
//     // body: Row(
//     //   children: [
//     //     Text('HELLO ROW'),
//     //     FlatButton(
//     //       onPressed: (){},
//     //       color: Colors.orange[200],
//     //       child: Text('press me'),
//     //     ),
//     //     Container(
//     //       color: Colors.green[100],
//     //       padding: EdgeInsets.all(30.0),
//     //       child: Text('Invalid container'),
//     //     ),
//     //   ],
//     // ),
//     body: Column(
//       // width of the column will be highest width of it's children
//
//       mainAxisAlignment: MainAxisAlignment.end,
//       // mainAxisAlignment: MainAxisAlignment.spaceAround,
//       // mainAxisAlignment: MainAxisAlignment.center,
//       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       // mainAxisAlignment: MainAxisAlignment.start,
//
//       //horizontal alignment
//       crossAxisAlignment: CrossAxisAlignment.end,
//       // crossAxisAlignment: CrossAxisAlignment.stretch,
//       // crossAxisAlignment: CrossAxisAlignment.start,
//       // crossAxisAlignment: CrossAxisAlignment.center,
//
//       //following is giving error:textBaseline is required
//       // if you specify the crossAxisAlignment with CrossAxisAlignment.baseline
//       // crossAxisAlignment: CrossAxisAlignment.baseline,
//
//       children: [
//         // Text('HELLO ROW'),
//         // FlatButton(
//         //   onPressed: (){},
//         //   color: Colors.purple[200],
//         //   child: Text('press me'),
//         // ),
//         // Row(
//         //   // hight of the row will be highest height of it's children
//         // children: [
//         //     Text('hello ddu,... '),
//         //     Text(' ...Hello 5th sem students....')
//         //   ],
//         // ),
//       Expanded(
//           child: Container(
//             color: Colors.deepOrangeAccent[100],
//             padding: EdgeInsets.all(30.0),
//             child: Text('Inside container 1'),
//           ),
//         ),
//
//         Expanded(
//           child: Container(
//             color: Colors.grey[400],
//             padding: EdgeInsets.all(50.0),
//             child: Text('Invalid container 2'),
//           ),
//         ),
//
//         Container(
//           color: Colors.lightGreen[700],
//           padding: EdgeInsets.all(70.0),
//           child: Text('Invalid container 3'),
//         ),
//       ],
//     ),
//     floatingActionButton: FloatingActionButton(
//       onPressed: (){},
//       child: Text('Click'),
//       backgroundColor: Colors.red[200],
//     ),
//
//   ),
// ) );
