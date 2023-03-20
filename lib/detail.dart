import 'package:flutter/material.dart';
import 'package:tugas2praktpm/identity.dart';

class Detail extends StatefulWidget {
  final Identity identitas;
  const Detail({Key? key, required this.identitas}) : super(key: key);


  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.identitas.name),
          ],
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Container(
                child: Image.network(widget.identitas.fotoUrls,
                  width: 250,
                  height: 250,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.identitas.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ],
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left:30, right: 30),
                child: Column(

                  children: [
                    Row(
                      children: [
                        Text('Username  : '),
                        Text(widget.identitas.username),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Email           : '),
                        Text(widget.identitas.email[0]),
                        Text(','),
                        Text(widget.identitas.email[1]),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      alignment: Alignment.center,
                      child:
                      Text('Company',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(widget.identitas.company[0][0], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(widget.identitas.company[0][1]),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(widget.identitas.company[1][0], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(widget.identitas.company[1][1]),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 20,),

            ]
        ),

      ),
    );
  }
}