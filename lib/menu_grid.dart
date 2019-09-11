import 'package:flutter/material.dart';
import 'detail.dart';
import 'data.dart';

class MenuGrid extends StatelessWidget {
  const MenuGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pekan Olahraga Nasional'),
        leading: Icon(Icons.home),
      ),
      body: SafeArea(
        child: GridView.builder(
          itemCount: DataOlahraga().jumlahData(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context,int index){
            return GestureDetector(
              child: GridTile(
                child: Card(
                  margin:EdgeInsets.all(12.0),
                  child: Hero(
                    tag: DataOlahraga().getNama(index),
                    child: Image.asset(
                      'images/'+ DataOlahraga().getGambar(index),
                      fit:BoxFit.cover,
                    ),
                  ),
                ),
                footer: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: GridTileBar(
                    backgroundColor: Colors.black54,
                    leading: Icon(Icons.arrow_right),
                    title: Text(
                      DataOlahraga().getNama(index),
                        style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context)=> Detail(index: index),
                  ),
                  );
              },
            );
          },
        ),
      ),
    );
  }
}