import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test2 extends StatefulWidget{
  _Test2 createState() => _Test2();
}
class _Test2 extends State<Test2>{

  List<String> listJoke =['A child asked his father, How were people born? So his father said,\n'
  ' Adam and Eve made babies, then their babies became adults and made babies, and so on.\n'
  'The child then went to his mother, asked her the same question and she told him, We were monkeys then we evolved to become like we are now.\n'
  'The child ran back to his father and said, You lied to me!\n'
      'His father replied, No, your mom was talking about her side of the family.',
  'Teacher: "Kids,what does the chicken give you?"\n'
  'Student: "Meat!"\n'
  'Teacher: "Very good! Now what does the pig give you?"\n'
  'Student: "Bacon!"\n'
  'Teacher: "Great! And what does the fat cow give you?"\n'
      'Student: "Homework!"',
  'The teacher asked Jimmy, "Why is your cat at school today Jimmy?"\n'
      'Jimmy replied crying, "Because I heard my daddy tell my mommy, \n'
  'I am going to eat that pussy once Jimmy leaves for school today!',
  'A housewife, an accountant and a lawyer were asked "How much is 2+2?"\n'
  'The housewife replies: "Four!".\n'
  'The accountant says: "I think its either 3 or 4.  Let me run those figures through my spreadsheet one more time.\n'
      '"The lawyer pulls the drapes, dims the lights and asks in a hushed voice, "How much do you want it to be?"'];
  int jokeNumber = 0;
  _nextJoke(){
    setState(() {
      if(jokeNumber==listJoke.length-1){
        listJoke.add('That\'s all the jokes for today! Come back another day!');

      }
      jokeNumber++;

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                  height: 60,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 150, 0),
                        child: Image(image: AssetImage('assets/logo.png'),),

                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,

                        children: <Widget>[
                          Text('Handicrafted by', style: TextStyle(color: Colors.grey, fontSize: 12),),
                          Text('Jim HLS')
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/avatar.jpeg'),

                        ),
                      )

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.green
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize:  MainAxisSize.max,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(0 , 0, 0, 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('A joke a day keeps the doctor away', style: TextStyle(color: Colors.white, fontSize: 20, ),),

                        ],
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('If you joke wrong way, your teeth have to pay.(Serious)', style: TextStyle(color: Colors.white, fontSize: 13),)
                        ],
                      )

                    ],
                  ),


                ),
                Container(

                  child: Column(
                    children: <Widget>[
                      Container(
                        

                        child: Text(listJoke[jokeNumber], overflow: TextOverflow.visible, style: TextStyle(fontSize: 14, color: Colors.black), textAlign: TextAlign.start,),
                        height: 230,
                        margin: EdgeInsets.fromLTRB(15 , 40, 15, 0),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: <Widget>[
                          Padding(padding: EdgeInsets.fromLTRB(10, 5, 0, 5)),
                          ElevatedButton(onPressed: _nextJoke,
                              child: Text('This is Funny!')),
                          ElevatedButton(onPressed: _nextJoke,
                              child: Text('This is not Funny.'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,

                              )),
                          Padding(padding: EdgeInsets.fromLTRB(0, 5, 10, 5))

                        ],
                      )

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                              child: Expanded(

                                child: Container(
                                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Text('This appis created as part of HLsolutions program. The materials con-\n'
                                      'tained on this website are provided for general imformation only and\n'
                                      'do not constitute any form of advice. HLS assumes no responsibility\n'
                                      'for the accuracy of any particular statement and accepts no liability\n'
                                      'for any loss or damage which may arise from reliance on the info-\n'
                                      'mation contained on this site', overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12,color: Colors.grey), textAlign: TextAlign.center, ),

                                )  ,
                              ) )

                        ],
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0 , 0, 0, 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Copyright 2021 HLS', style: TextStyle(color: Colors.black54),)
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}