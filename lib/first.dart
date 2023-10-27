import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: demo(),));
}
class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  
  List l=["","","","","","","","",""];
  List<bool> temp=List.filled(9, true);
  int t=0,k=0;
  String message="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Expanded(child: Row(children: [
            Expanded(child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text("Player 1  :  X",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(width: 4,color: Colors.black54)
              ),
            )),

            Expanded(child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text("Computer  :  O",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(width: 4,color: Colors.black54)
              ),
            ))
          ],)),

        Expanded(child: Row(children: [
          Expanded(child: InkWell(
            onTap:  () {
              if(message == "")
                {
                  temp[0]?get(0):null;
                }
              win();
            } ,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text("${l[0]}",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: 4,color: Colors.black)),
            ),
          )),

          Expanded(child: InkWell(
            onTap: () {
              if(message == "")
                {
                  temp[1]?get(1):null;
                }
                 win();
                },
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text("${l[1]}",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: 4,color: Colors.black)),
            ),
          )),

          Expanded(child: InkWell(
            onTap: () {
              if(message == "")
                {
                  temp[2]?get(2):null;
                }
              win();
              } ,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text("${l[2]}",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: 4,color: Colors.black)),
            ),
          )),
        ],)),

          Expanded(child: Row(children: [
            Expanded(child:InkWell(
              onTap: () {
                if(message == "")
                  {
                    temp[3]?get(3):null;
                  }
                win();
              } ,
              child:  Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("${l[3]}",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 4,color: Colors.black)),
              ),
            )),

            Expanded(child: InkWell(
              onTap: () {
                if(message == "")
                  {
                    temp[4]?get(4):null;
                  }
                win();
              } ,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("${l[4]}",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 4,color: Colors.black)),
              ),
            )),

            Expanded(child: InkWell(
              onTap: () {
                if(message == "")
                  {
                    temp[5]?get(5):null;
                  }
                win();
              } ,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("${l[5]}",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 4,color: Colors.black)),
              ),
            )),
          ],)),

          Expanded(child: Row(children: [
            Expanded(child: InkWell(
              onTap: () {
                if(message == "")
                  {
                    temp[6]?get(6):null;
                  }
                win();
              } ,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("${l[6]}",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 4,color: Colors.black)),
              ),
            )),

            Expanded(child: InkWell(
              onTap: () {
                if(message == "")
                  {
                    temp[7]?get(7):null;
                  }
                win();
              } ,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("${l[7]}",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 4,color: Colors.black)),
              ),
            )),

            Expanded(child: InkWell(
              onTap: () {
                if(message == "")
                  {
                    temp[8]?get(8):null;
                  }
                win();
              } ,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("${l[8]}",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 4,color: Colors.black)),
              ),
            )),
          ],)),

          Padding(padding: EdgeInsets.all(5)),
          Container(
          child: Text("${message}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          Padding(padding: EdgeInsets.all(5)),

          ElevatedButton(onPressed: () {
           l=List.filled(9, "");
            setState(() {

            });
          }, child: Text("reset")),
        ],),

      appBar: AppBar());
  }
  
  get(int i)
  {
    k++;

    l[i]="X";
    temp[i]=false;

    if(k<5)
     {
       while(true)
         {
           t=Random().nextInt(9);
           if(l[t] == "")
           {
             l[t]="O";
             temp[t]=false;
             break;
           }
         }
     }
   setState(() {

   });
  }

  win() {

    if (l[0] == "X" && l[1] == "X" && l[2] == "X" ||
        l[0] == "X" && l[3] == "X" && l[6] == "X" ||
        l[0] == "X" && l[4] == "X" && l[8] == "X" ||
        l[1] == "X" && l[4] == "X" && l[7] == "X" ||
        l[2] == "X" && l[4] == "X" && l[6] == "X" ||
        l[2] == "X" && l[5] == "X" && l[8] == "X" ||
        l[3] == "X" && l[4] == "X" && l[5] == "X" ||
        l[6] == "X" && l[7] == "X" && l[8] == "X")
    {
      for (int i = 0; i < 9; i ++)
      {
        if (l[i] == "")
        {
          l[i] == "";
        }
        setState(() {

        });
      }
      message= "X is winner";
    }

    else if (l[0] == "O" && l[1] == "O" && l[2] == "O" ||
        l[0] == "O" && l[3] == "O" && l[6] == "O" ||
        l[0] == "O" && l[4] == "O" && l[8] == "O" ||
        l[1] == "O" && l[4] == "O" && l[7] == "O" ||
        l[2] == "O" && l[4] == "O" && l[6] == "O" ||
        l[2] == "O" && l[5] == "O" && l[8] == "O" ||
        l[3] == "O" && l[4] == "O" && l[5] == "O" ||
        l[6] == "O" && l[7] == "O" && l[8] == "O")
    {
      for (int i = 0; i < 9; i ++)
      {
        if (l[i] == "")
        {
          l[i] == "";
        }
        setState(() {

        });
      }
      message = "O is winner";
    }

  }
}