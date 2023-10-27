import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: game(),
    debugShowCheckedModeBanner: false,));
}

class game extends StatefulWidget {
  const game({Key? key}) : super(key: key);

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {

  List l=[];
  int t=0;

  @override
  void initState() {
    for(int i=0;i<9;i++)
    {
       t=Random().nextInt(9);
      if(!l.contains(t))
      {
        l.add(t);
      }
      else
      {
        i--;
      }
    }

    for(int i=0;i<l.length;i++)
    {
      if (l[i] == 0)
      {
        l[i] = "";
      }
    }
     // print(l);
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Number Game",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
      ),
      
      body: Column(
        children: [
          Expanded(child: Row(children: [
            Expanded(child: InkWell(
              onTap: () {

                if(l[1] == "")
                  {
                    l[1] = l[0];
                    l[0] = "";
                  }

                if(l[3] == "")
                  {
                    l[3] = l[0];
                    l[0] = "";
                  }
                setState(() {

                });
               },
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text("${l[0]}",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                  border: Border.all(width: 4,color: Colors.black),
                ),
              ),
            )),

            Expanded(child: InkWell(
              onTap: () {

                if(l[0] == "")
                  {
                    l[0] = l[1];
                    l[1] = "";
                  }

                if(l[2] == "")
                  {
                    l[2] = l[1];
                    l[1] = "";
                  }

                if(l[4] == "")
                  {
                    l[4] = l[1];
                    l[1] = "";
                  }
                setState(() {

                });
              },
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text("${l[1]}",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                  border: Border.all(width: 4,color: Colors.black),
                ),
              ),
            )),

            Expanded(child: InkWell(
              onTap:() {

                if(l[1] == "")
                  {
                    l[1] = l[2];
                    l[2] = "";
                  }

                if(l[5] == "")
                  {
                    l[5] = l[2];
                    l[2] = "";
                  }
                setState(() {

                });
              },
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text("${l[2]}",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                  border: Border.all(width: 4,color: Colors.black),
                ),
              ),
            )),
          ],)),

//   ====================================================================================================

          Expanded(child: Row(children: [
            Expanded(child: InkWell(
              onTap: () {

                if(l[0] == "")
                  {
                    l[0] = l[3];
                    l[3] = "";
                  }

                if(l[4] == "")
                  {
                    l[4] = l[3];
                    l[3] = "";
                  }

                if(l[6] == "")
                  {
                    l[6] = l[3];
                    l[3] = "";
                  }
                setState(() {

                });
              },
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(20),alignment: Alignment.center,
                child: Text("${l[3]}",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                  border: Border.all(width: 4,color: Colors.black),
                ),
              ),
            )),

            Expanded(child: InkWell(
              onTap: () {

                if(l[1] == "")
                  {
                    l[1] = l[4];
                    l[4] = "";
                  }

                if(l[3] == "")
                  {
                    l[3] = l[4];
                    l[4] = "";
                  }

                if(l[5] == "")
                {
                  l[5] = l[4];
                  l[4] = "";
                }

                if(l[7] == "")
                {
                  l[7] = l[4];
                  l[4] = "";
                }
                setState(() {

                });
              },
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text("${l[4]}",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                  border: Border.all(width: 4,color: Colors.black),
                ),
              ),
            )),

            Expanded(child: InkWell(
              onTap: () {

                if(l[2] == "")
                {
                  l[2] = l[5];
                  l[5] = "";
                }

                if(l[4] == "")
                {
                  l[4] = l[5];
                  l[5] = "";
                }

                if(l[8] == "")
                {
                  l[8] = l[5];
                  l[5] = "";
                }
                setState(() {

                });
              },
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text("${l[5]}",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                  border: Border.all(width: 4,color: Colors.black),
                ),
              ),
            )),
          ],)),

//   ====================================================================================================

          Expanded(child: Row(children: [
            Expanded(child: InkWell(
              onTap: () {

                if(l[3] == "")
                {
                  l[3] = l[6];
                  l[6] = "";
                }

                if(l[7] == "")
                {
                  l[7] = l[6];
                  l[6] = "";
                }
                setState(() {

                });
              },
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text("${l[6]}",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                  border: Border.all(width: 4,color: Colors.black),
                ),
              ),
            )),

            Expanded(child: InkWell(
              onTap: () {

                if(l[4] == "")
                {
                  l[4] = l[7];
                  l[7] = "";
                }

                if(l[6] == "")
                {
                  l[6] = l[7];
                  l[7] = "";
                }

                if(l[8] == "")
                {
                  l[8] = l[7];
                  l[7] = "";
                }
                setState(() {

                });
              },
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text("${l[7]}",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                  border: Border.all(width: 4,color: Colors.black),
                ),
              ),
            )),

            Expanded(child: InkWell(
              onTap: () {

                if(l[5] == "")
                {
                  l[5] = l[8];
                  l[8] = "";
                }

                if(l[7] == "")
                {
                  l[7] = l[8];
                  l[8] = "";
                }
                setState(() {
                  
                });
              },
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text("${l[8]}",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                  border: Border.all(width: 4,color: Colors.black),

                ),),
            )),
          ],)),

//   ====================================================================================================

          ElevatedButton(onPressed: () {

              List l=List.filled(9, "");
            // initState();
            setState(() {

            });
          }, child: Text("Reset",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
        ],),
    );
  }
}
