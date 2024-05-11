import 'package:flutter/material.dart';
import 'package:oper_cinema_secondversion/moreinfopage.dart';
import 'package:oper_cinema_secondversion/movies.dart';
import 'package:oper_cinema_secondversion/utils/extensions.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Container(
        color: Colors.grey.shade900,
        padding: const EdgeInsets.only(right: 15, left: 15, top: 50),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 330,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade600),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      ),
                      10.width(),
                      const Text(
                        'Search',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Ink(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.display_settings_sharp)),
                )
              ],
            ),
            20.height(),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Moreinfo(
                              image: 'assets/images/bolt.png', name: 'Bolt');
                        },
                      ),
                    );
                  },
                  child: Movies(0, '9.8'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Moreinfo(
                              image: 'assets/images/donald.png',
                              name: 'Donald Mackdak');
                        },
                      ),
                    );
                  },
                  child: Movies(1, '9.5'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Moreinfo(
                              image: 'assets/images/fines.png',
                              name: 'Fines and Ferb');
                        },
                      ),
                    );
                  },
                  child: Movies(2, '9.2'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Moreinfo(
                              image: 'assets/images/macquuen.png',
                              name: 'The Cars');
                        },
                      ),
                    );
                  },
                  child: Movies(3, '9.9'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Moreinfo(
                              image: 'assets/images/mickey.png',
                              name: 'Mickey Mouse');
                        },
                      ),
                    );
                  },
                  child: Movies(4, '9.1'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Moreinfo(
                              image: 'assets/images/tom.png',
                              name: 'Tom and Jary');
                        },
                      ),
                    );
                  },
                  child: Movies(5, '9.3'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Moreinfo(
                              image: 'assets/images/bolt.png', name: 'Bolt');
                        },
                      ),
                    );
                  },
                  child: Movies(0, '9.8'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Moreinfo(
                              image: 'assets/images/donald.png',
                              name: 'Donald Mackdak');
                        },
                      ),
                    );
                  },
                  child: Movies(1, '9.5'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Moreinfo(
                              image: 'assets/images/fines.png',
                              name: 'Fines and Ferb');
                        },
                      ),
                    );
                  },
                  child: Movies(2, '9.2'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Moreinfo(
                              image: 'assets/images/macquuen.png',
                              name: 'The Cars');
                        },
                      ),
                    );
                  },
                  child: Movies(3, '9.9'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Moreinfo(
                              image: 'assets/images/mickey.png',
                              name: 'Mickey Mouse');
                        },
                      ),
                    );
                  },
                  child: Movies(4, '9.1'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Moreinfo(
                              image: 'assets/images/tom.png',
                              name: 'Tom and Jary');
                        },
                      ),
                    );
                  },
                  child: Movies(5, '9.3'),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
