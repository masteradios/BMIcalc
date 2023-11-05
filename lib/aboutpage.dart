import 'package:flutter/material.dart';
class About extends StatefulWidget {


  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YUMMY'),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 400.0,
        childAspectRatio: 1.5,
        crossAxisSpacing: 100.0,

      ),
      children: [
        about('Aditya K : इसे अवनी पसंद है ',AssetImage('assets/aditya.jpg')),
        about('Chinmay Phapale : इसे श्रेया पसंद है ',AssetImage('assets/chinma.jpeg')),
        about('Lintomon C. : इसे MCA वाली पसंद है ',AssetImage('assets/linto.jpeg')),
        about('Vedant T. : इसे फ़िलहाल कोई पसंद नहीं  ',AssetImage('assets/vedant.jpeg')),



      ],
      )


    );
  }
}
class about extends StatelessWidget {
  about(this.name,this.image);
  final String name;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: image,
          ),
          Text(name,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
        ],
      ),

    );
  }
}
