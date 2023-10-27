import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: game(),
  darkTheme: ThemeData.dark(),));
}

class game extends StatefulWidget {
  const game({Key? key}) : super(key: key);

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {

  List list = ["", "", "", "", "", "", "", "", ""];
  int cnt =0;
  String message = "";

  TextEditingController t1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text("Tic Tac Toe"),
      ),

      body: Column(children: [
        Expanded(child: Row(children: [
          Expanded(child: InkWell(
            onTap: () {
             if(message =="")
               {
                 if (cnt % 2 == 0) {
                   list[0] = "X";
                 }
                 else {
                   list[0] = "O";
                 }
               }
              cnt++;
              win();
              setState(() {

              });
            },
            child: Container(
              alignment: Alignment.center,
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              child: Text("${list[0]}",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),),
              decoration: BoxDecoration(
                  border: Border.all(width: 4, color: Colors.black)
              ),
            ),
          )),

          Expanded(child: InkWell(
            onTap: () {
              if(message == "")
                {
                  if (cnt % 2 == 0) {
                    list[1] = "X";
                  }
                  else {
                    list[1] = "O";
                  }
                }
              cnt++;
              win();
              setState(() {

              });
            },
            child: Container(
                alignment: Alignment.center,
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: Text("${list[1]}", style: TextStyle(
                    fontSize: 50, fontWeight: FontWeight.w900)),
                decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.black)
                )),
          )
          ),

          Expanded(child: InkWell(
            onTap: () {
              if(message == "")
                {
                  if (cnt % 2 == 0) {
                    list[2] = "X";
                  }
                  else {
                    list[2] = "O";
                  }
                }
              cnt++;
              win();
              setState(() {

              });
            },
            child: Container(
                alignment: Alignment.center,
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: Text("${list[2]}",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),),
                decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.black)
                )),
          )),
        ])),

        Expanded(child: Row(children: [
          Expanded(child: InkWell(
            onTap: () {
              if(message == "")
                {
                  if (cnt % 2 == 0) {
                    list[3] = "X";
                  }
                  else {
                    list[3] = "O";
                  }
                }
              cnt++;
              win();
              setState(() {

              });
            },
            child: Container(
              alignment: Alignment.center,
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              child: Text("${list[3]}",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),),
              decoration: BoxDecoration(
                  border: Border.all(width: 4, color: Colors.black)
              ),
            ),
          )),

          Expanded(child: InkWell(
            onTap: () {
              if(message == "")
                {
                  if (cnt % 2 == 0) {
                    list[4] = "X";
                  }
                  else {
                    list[4] = "O";
                  }
                }
              cnt++;
              win();
              setState(() {

              });
            },
            child: Container(
                alignment: Alignment.center,
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: Text("${list[4]}",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),),
                decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.black)
                )),
          )
          ),

          Expanded(child: InkWell(
            onTap: () {
              if(message == "")
                {
                  if (cnt % 2 == 0) {
                    list[5] = "X";
                  }
                  else {
                    list[5] = "O";
                  }
                }
              cnt++;
              win();
              setState(() {

              });
            },
            child: Container(
                alignment: Alignment.center,
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: Text("${list[5]}",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),),
                decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.black)
                )),
          )),
        ])),

        Expanded(child: Row(children: [
          Expanded(child: InkWell(
            onTap: () {
              if(message == "")
                {
                  if (cnt % 2 == 0) {
                    list[6] = "X";
                  }
                  else {
                    list[6] = "O";
                  }
                }
              cnt++;
              win();
              setState(() {

              });
            },
            child: Container(
              alignment: Alignment.center,
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              child: Text("${list[6]}",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),),
              decoration: BoxDecoration(
                  border: Border.all(width: 4, color: Colors.black)
              ),
            ),
          )),

          Expanded(child: InkWell(
            onTap: () {
              if(message == "")
                {
                  if (cnt % 2 == 0) {
                    list[7] = "X";
                  }
                  else {
                    list[7] = "O";
                  }
                }
              cnt++;
              win();
              setState(() {

              });
            },
            child: Container(
                alignment: Alignment.center,
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: Text("${list[7]}",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),),
                decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.black)
                )),
          )
          ),

          Expanded(child: InkWell(
            onTap: () {
              if(message == "")
                {
                  if (cnt % 2 == 0) {
                    list[8] = "X";
                  }
                  else {
                    list[8] = "O";
                  }
                }
              win();
              cnt++;
              setState(() {

              });
            },
            child: Container(
                alignment: Alignment.center,
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: Text("${list[8]}",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),),
                decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.black)
                )),
          )),
        ])),

        Padding(padding: EdgeInsets.all(10)),
        Container(child: Text("$message",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),

        //Expanded(child: Row(children: [
          ElevatedButton(onPressed: () {
            for (int x = 0; x <= 8; x++) {
              list[x] = "";
              message = "";
            }
            setState(() {

            });
          }, child: Text("reset", style: TextStyle(fontSize: 20),)),

        //],)),

        Expanded(child: Row(children: [
          Expanded(child: Container(
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
             margin: EdgeInsets.all(20),
             child: Text("Player  1  :  X",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
             decoration: BoxDecoration(
              border: Border.all(width: 4, color: Colors.black))
     )),

          Expanded(child: Container(
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
              margin: EdgeInsets.all(20),
              child: Text("Player  2  :  O",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                border: Border.all(width: 4, color: Colors.black)
              ),
          )),
        ],))
      ],),
    );
  }

  void win() {

        if (list[0] == "X" && list[1] == "X" && list[2] == "X" ||
            list[0] == "X" && list[3] == "X" && list[6] == "X" ||
            list[0] == "X" && list[4] == "X" && list[8] == "X" ||
            list[1] == "X" && list[4] == "X" && list[7] == "X" ||
            list[2] == "X" && list[4] == "X" && list[6] == "X" ||
            list[2] == "X" && list[5] == "X" && list[8] == "X" ||
            list[3] == "X" && list[4] == "X" && list[5] == "X" ||
            list[6] == "X" && list[7] == "X" && list[8] == "X")
        {
          for (int i = 0; i < 9; i ++)
          {
            if (list[i] == "")
            {
              list[i] == "";
            }
            setState(() {

            });
          }
          message= "X is winner";
        }

        else if (list[0] == "O" && list[1] == "O" && list[2] == "O" ||
            list[0] == "O" && list[3] == "O" && list[6] == "O" ||
            list[0] == "O" && list[4] == "O" && list[8] == "O" ||
            list[1] == "O" && list[4] == "O" && list[7] == "O" ||
            list[2] == "O" && list[4] == "O" && list[6] == "O" ||
            list[2] == "O" && list[5] == "O" && list[8] == "O" ||
            list[3] == "O" && list[4] == "O" && list[5] == "O" ||
            list[6] == "O" && list[7] == "O" && list[8] == "O")
        {
          for (int i = 0; i < 9; i ++)
          {
            if (list[i] == "")
              {
                list[i] == "";
              }
            setState(() {

            });
          }
          message = "O is winner";
        }

      }
  }



