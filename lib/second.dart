import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: form(),));
}
class form extends StatefulWidget {
  const form({Key? key}) : super(key: key);

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  
  TextEditingController a1 =TextEditingController();
  TextEditingController a2 =TextEditingController();

  double sum=0,sub =0,div =0,mul=0;

  void clearText()
  {
    a1.clear();
    a2.clear();
  }
  //get clearText => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("Solution",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
      ),

      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),

          TextField(
            controller: a1,
            decoration: InputDecoration(
              hintText: "Enter first no :",
              fillColor: Colors.lightGreen,
              filled: true,
              // suffixIcon: Icon(Icons.add),
              // prefixIcon: Icon(Icons.add),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),)
            ),),
            
            Padding(padding: EdgeInsets.all(10)),
          
          TextField(
            controller: a2,
             decoration: InputDecoration(
               hintText: "Enter second no :",
               fillColor: Colors.yellow,
               filled: true,
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),)
             ),),

          Padding(padding: EdgeInsets.all(10)),

          Row(
            children: [
              ElevatedButton(onPressed: () {

                String s1=a1.text;
                String s2=a2.text;

                sum=double.parse(s1) + double.parse(s2);
                print(sum);

                setState(() {

                });
               }, child: Text("sum")),
              Padding(padding: EdgeInsets.only(left: 50)),

              ElevatedButton(onPressed: () {

                String s1=a1.text;
                String s2=a2.text;

                sub=double.parse(s1) - double.parse(s2);
                print(sub);

                setState(() {

                });
              }, child: Text("sub")),
              Padding(padding: EdgeInsets.only(left: 50)),

              ElevatedButton(onPressed: () {

                String s1=a1.text;
                String s2=a2.text;

                div=double.parse(s1) / double.parse(s2);
                print(div);

               setState(() {

               });
               }, child: Text("div")),
              Padding(padding: EdgeInsets.only(left: 50)),

              ElevatedButton(onPressed: () {

                String s1=a1.text;
                String s2=a2.text;

                mul=double.parse(s1) * double.parse(s2);
                print(mul);

                setState(() {

                });
              }, child: Text("mul")),
              Padding(padding: EdgeInsets.only(left: 50)),

              ElevatedButton(
                onPressed: clearText,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child:  Text('Clear',style: TextStyle(color: Colors.white),),
              ),

            ],
          ),

          Padding(padding: EdgeInsets.all(10)),
          Text("ANS : ${sum +sub +div + mul}" ),
        ],
      ),
    );
  }
}
