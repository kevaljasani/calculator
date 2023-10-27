import 'package:calculator/first.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: cal(),
  darkTheme: ThemeData.dark(),
  ));
}
class cal extends StatefulWidget {
  const cal({Key? key}) : super(key: key);

  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {


  String ans="";

  String a="";
  String b="";
  int t=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        //backgroundColor: Colors.yellow,
        title: Text("Calculator",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),),
      ),

      body: Column(//crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Expanded(child: Row(children: [               ///////1
          Expanded(child: Container(

            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            //transform: Matrix4.rotationX(20.10),
            color: Colors.white,
            alignment: Alignment.center,
            child: Text("${ans}",style: TextStyle(fontSize: 20,color: Colors.black),),
          ))
        ],)),

          Expanded(child: Row(children: [             //////2
            Expanded(child: InkWell(
              onTap: () {

                a="";
                b="";
                ans="";

                setState(() {

                });

              },
                child :Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Text("CE",style: TextStyle(fontSize: 20),),
                  color: Colors.black,
                ),
            )),

            Expanded(child: InkWell(
              onTap: () {

                if(ans != " ")
                  {
                    ans=ans.substring(0,ans.length - 1);
                  }

                setState(() {
                });
              },

              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("C",style: TextStyle(fontSize: 20),),
                color: Colors.black,
              ),
            )),

            Expanded(child: InkWell(
              onTap: () => fun("."),
              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text(".",style: TextStyle(fontSize: 20),),
                color: Colors.black,
              ),
            )),

            Expanded(child: Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text("%",style: TextStyle(fontSize: 20),),
              color: Colors.black,
            )),

          ],)),

          Expanded(child: Row(children: [             ////////3
            Expanded(child: InkWell(
              onTap: () => fun("7"),
              child:  Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("7",style: TextStyle(fontSize: 20),),
                color: Colors.black,
              ),
            )),

            Expanded(child: InkWell(
              onTap: () => fun("8"),
              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("8",style: TextStyle(fontSize: 20),),
                color: Colors.black,
              ),
            )),

            Expanded(child: InkWell(
              onTap: () => fun("9"),
              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("9",style: TextStyle(fontSize: 20),),
                color: Colors.black,
              ),
            )),

            Expanded(child: InkWell(
              onTap: () {
                a=ans;
                ans="";
                t=1;

                setState(() {

                });
              },
              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("/",style: TextStyle(fontSize: 20),),
                color: Colors.black,
              ),
            )),
          ],)),

          Expanded(child: Row(children: [       /////////4
            Expanded(child: InkWell(
              onTap: () => fun("4"),
              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("4",style: TextStyle(fontSize: 20),),
                color: Colors.black,
              ),
            )),

            Expanded(child: InkWell(
              onTap: () => fun("5"),
              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("5",style: TextStyle(fontSize: 20),),
                color: Colors.black,
              ),
            )),

            Expanded(child: InkWell(
              onTap: () => fun("6"),
              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("6",style: TextStyle(fontSize: 20),),
                color: Colors.black,
              ),
            )),

            Expanded(child: InkWell(
              onTap: () {
                a=ans;
                ans="";
                t=2;

                setState(() {

                });
              },
              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("*",style: TextStyle(fontSize: 20),),
                color: Colors.black,
              ),
            ))
          ],)),

            Expanded(child: Row(children: [             ///////5
              Expanded(child: InkWell(
                onTap: () => fun("1"),
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Text("1",style: TextStyle(fontSize: 20),),
                  color: Colors.black,
                ),
              )),

              Expanded(child: InkWell(
                onTap: () => fun("2"),
                child:  Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Text("2",style: TextStyle(fontSize: 20),),
                  color: Colors.black,
                ),
              )),

              Expanded(child: InkWell(
                onTap: () => fun("3"),
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Text("3",style: TextStyle(fontSize: 20),),
                  color: Colors.black,
                ),
              )),

              Expanded(child: InkWell(
                onTap: () {
                  a=ans;
                  ans="";
                  t=3;

                  setState(() {

                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Text("-",style: TextStyle(fontSize: 20),),
                  color: Colors.black,
                ),
              )),
          ],)),
          
          Expanded(child: Row(children: [       ///////6
            Expanded(child: InkWell(

              child: Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text("-/+",style: TextStyle(fontSize: 20),),
              color: Colors.black,
            ),
            )),

            Expanded(child: InkWell(
              onTap: () => fun("0"),
              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("0",style: TextStyle(fontSize: 20),),
                color: Colors.black,
              ),
            )),

            Expanded(child: InkWell(
              onTap: () => fun("00"),
              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("00",style: TextStyle(fontSize: 20),),
                color: Colors.black,
              ),
            )),

            Expanded(child: InkWell(
              onTap: () {
                a=ans;
                ans="";
                t=4;

                setState(() {

                });
              },
              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("+",style: TextStyle(fontSize: 20),),
                color: Colors.black,
              ),
            )),
          ],)),

          Expanded(child: Row(children: [       //////7
            Expanded(child: InkWell(
              onTap: () {
                b=ans;

                double s1=double.parse(a);
                double s2=double.parse(b);
                double sum=0;

                if(t == 1)
                  {
                    sum=s1/s2;
                  }
                else if(t == 2)
                  {
                    sum=s1*s2;
                  }
                else if(t == 3)
                  {
                    sum=s1-s2;
                  }
                else if(t == 4)
                  {
                    sum=s1+s2;
                  }


                ans=sum.toString();


                setState(() {

                });
              },
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                color: Colors.black,
                child: Text("=",style: TextStyle(fontSize: 30),),
              ),
            ))
          ],)),
      ],),
    );
  }


  fun(String a)
  {
    ans=ans+a;
    print(ans);

    setState(() {

    });
  }
}
