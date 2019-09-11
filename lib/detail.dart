import 'package:flutter/material.dart';
import 'data.dart';

class Detail extends StatelessWidget {
  Detail({this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(DataOlahraga().getNama(index)),
          leading: IconButton(
            icon: Icon(Icons.backspace),
            onPressed: () => Navigator.pop(context, false),
          )),
      body: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 30.0),
                    child: Image.asset(
                      
                     // radius: 100.0,
                      //backgroundImage: AssetImage(
                          'images/' + DataOlahraga().getGambar(index),
                        //  ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(DataOlahraga().getKeterangan(index),
                      style: TextStyle(fontSize: 18,color:Colors.green,fontWeight: FontWeight.bold ),
                      ),

                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}