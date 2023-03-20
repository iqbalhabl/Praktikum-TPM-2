import 'package:flutter/material.dart';
import 'package:tugas2praktpm/detail.dart';
import 'package:tugas2praktpm/identity.dart';

class daftarList extends StatefulWidget {
  const daftarList({Key? key}) : super(key: key);

  @override
  State<daftarList> createState() => _daftarListState();
}

class _daftarListState extends State<daftarList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Text('Main Page',),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final Identity identitas = listIdentity[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Detail(identitas:identitas)
              )
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      child: Image.network(identitas.fotoUrls,
                        width: 150,
                        height: 150,
                      ),
                    ),
                    Column(

                        children: <Widget>[
                          Row(

                            children: [
                              Text(identitas.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            ],

                          ),

                        ]
                    ),

                  ],
                ),
              ),
            ),
          );
        },
        itemCount: listIdentity.length,

      ),
    );
  }
}