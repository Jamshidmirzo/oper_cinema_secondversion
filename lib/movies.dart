import 'package:flutter/material.dart';

class Movies extends StatelessWidget {
  int id;
  String rating;
  Movies(this.id, this.rating);

  List<Map> allmovies = [
    {
      'name': 'Bolt',
      'imageurl': 'assets/images/bolt.png',
    },
    {
      'name': 'Donald Macdak',
      'imageurl': 'assets/images/donald.png',
    },
    {
      'name': 'Fines and Ferb',
      'imageurl': 'assets/images/fines.png',
    },
    {
      'name': ' The Cars',
      'imageurl': 'assets/images/macquuen.png',
    },
    {
      'name': 'Mickey Mouse',
      'imageurl': 'assets/images/mickey.png',
    },
    {
      'name': 'Tom and Jerry',
      'imageurl': 'assets/images/tom.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(allmovies[id]['imageurl']), fit: BoxFit.cover)),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(5),
      child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.deepPurple),
          alignment: Alignment.center,
          child: Text(
            rating,
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}
