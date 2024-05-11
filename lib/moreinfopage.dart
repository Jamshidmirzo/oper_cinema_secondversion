import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oper_cinema_secondversion/movies.dart';
import 'package:oper_cinema_secondversion/utils/extensions.dart';

class Moreinfo extends StatefulWidget {
  String image;
  String name;

  Moreinfo({required this.image, required this.name});
  @override
  State<Moreinfo> createState() {
    // ignore: no_logic_in_create_state
    return _Moreinfo(images: image, names: name);
  }
}

class _Moreinfo extends State<Moreinfo> {
  String images;
  String names;
  bool isselected = true;
  bool isselected2 = false;
  bool isselected3 = false;
  int id = 0;

  actors() {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/images/macan.png'),
                  fit: BoxFit.cover)),
        ),
        const Column(
          children: [
            Text(
              'Macan',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text('Singer', style: TextStyle(color: Colors.white, fontSize: 12)),
          ],
        ),
        20.width(),
      ],
    );
  }

  trailersitem() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.center,
              child: const Icon(
                Icons.play_circle_fill_outlined,
                color: Colors.white,
              ),
            ),
            20.width(),
            Column(
              children: [
                Text(
                  names,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                ),
                const Text(
                  '1h 45m',
                  style: TextStyle(color: Colors.white),
                ),
                const Chip(
                  backgroundColor: Colors.redAccent,
                  label: Text(
                    'Update',
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                ),
              ],
            ),
          ],
        ),
        20.height(),
      ],
    );
  }

  trailers() {
    return Wrap(
      children: [
        trailersitem(),
        trailersitem(),
        trailersitem(),
        trailersitem(),
        trailersitem(),
        trailersitem(),
        trailersitem(),
      ],
    );
  }

  _Moreinfo({required this.images, required this.names});
  changecolumn(int id) {
    switch (id) {
      case 1:
        trailers();
        setState(() {});
    }
  }

  morelike() {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        Movies(0, '9,4'),
        Movies(1, '9,4'),
        Movies(2, '9,4'),
        Movies(3, '9,4'),
        Movies(4, '9,4'),
        Movies(5, '9,4'),
        Movies(0, '9,4'),
        Movies(1, '9,4'),
        Movies(2, '9,4'),
        Movies(3, '9,4'),
        Movies(4, '9,4'),
        Movies(5, '9,4'),
        Movies(0, '9,4'),
      ],
    );
  }

  commentitem() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/macan.png'),
                      fit: BoxFit.cover)),
            ),
            const Text(
              'Macan',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            Spacer(),
            const Icon(
              Icons.more_horiz_rounded,
              color: Colors.white,
            ),
          ],
        ),
        const Text(
          'Tempor veniam id velit enim voluptate est nulla lamco.',
          style: TextStyle(color: Colors.white),
        ),
        const Row(
          children: [
            Icon(
              Icons.favorite_outline_outlined,
              color: Colors.amber,
            ),
            SizedBox(
              width: 10,
            ),
            Text('938', style: TextStyle(color: Colors.white)),
            Spacer(),
            Text('3 days ago', style: TextStyle(color: Colors.white))
          ],
        ),
        30.height(),
      ],
    );
  }

  comments() {
    return Wrap(
      children: [
        commentitem(),
        commentitem(),
        commentitem(),
        commentitem(),
        commentitem(),
        commentitem(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(300),
        child: AppBar(
          flexibleSpace: Image.asset(
            images,
            fit: BoxFit.cover,
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: Ink(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: const Icon(
                  Icons.tap_and_play_rounded,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade900,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    names,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.save_alt_outlined,
                    color: Colors.white,
                  ),
                  10.width(),
                  const Icon(
                    Icons.send_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
              20.height(),
              Row(
                children: [
                  const Icon(
                    Icons.star_half_outlined,
                    color: Colors.deepPurple,
                  ),
                  10.width(),
                  const Text(
                    '9,8',
                    style: TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.w500),
                  ),
                  10.width(),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 18,
                    color: Colors.deepPurple,
                  ),
                  10.width(),
                  const Text(
                    '2022',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  10.width(),
                  Wrap(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Chip(
                                backgroundColor:
                                    Color.fromARGB(255, 37, 36, 36),
                                side: BorderSide(color: Colors.deepPurple),
                                label: Text('13+',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.deepPurple))),
                          ),
                          5.width(),
                          const Chip(
                            backgroundColor: Color.fromARGB(255, 37, 36, 36),
                            side: BorderSide(color: Colors.deepPurple),
                            label: Text('United State',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.deepPurple)),
                          ),
                          5.width(),
                          const Chip(
                            backgroundColor: Color.fromARGB(255, 37, 36, 36),
                            side: BorderSide(color: Colors.deepPurple),
                            label: Text(
                              'Subtitle',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.deepPurple),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              20.height(),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 190,
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.play_circle_fill_outlined,
                            color: Colors.white,
                            size: 27,
                          ),
                          10.width(),
                          const Text(
                            'Play',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 23),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 190,
                    height: 50,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple, width: 3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.download_for_offline_rounded,
                          color: Colors.deepPurple,
                          size: 27,
                        ),
                        10.width(),
                        const Text(
                          'Download',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              20.height(),
              const Text(
                'Anim ipsum non labore mollit reprehenderit ipsum ipsum do consequat cillum tempor eiusmod sit Esse ex incididunt sit duis ea id auteEa dolor laborum Lorem esse elit aliqua nulla irure consectetur labore ea exercitation.',
                style: TextStyle(color: Colors.white),
              ),
              20.height(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    actors(),
                    actors(),
                    actors(),
                    actors(),
                    actors(),
                    actors(),
                    actors(),
                    actors(),
                    actors(),
                    actors(),
                  ],
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          isselected = true;
                          isselected2 = false;
                          isselected3 = false;
                          id = 1;
                          setState(() {});
                        },
                        child: Text(
                          'Trailers',
                          style: TextStyle(
                              fontSize: 20,
                              color: isselected
                                  ? Colors.deepPurple
                                  : Colors.white),
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 5,
                        decoration: BoxDecoration(
                            color:
                                isselected ? Colors.deepPurple : Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          isselected = false;
                          isselected2 = true;
                          isselected3 = false;
                          id = 2;
                          setState(() {});
                        },
                        child: Text(
                          'More like This',
                          style: TextStyle(
                              fontSize: 15,
                              color: isselected2
                                  ? Colors.deepPurple
                                  : Colors.white),
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 5,
                        decoration: BoxDecoration(
                            color:
                                isselected2 ? Colors.deepPurple : Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          isselected = false;
                          isselected2 = false;
                          isselected3 = true;
                          id = 3;
                          setState(() {});
                        },
                        child: Text(
                          'Comments',
                          style: TextStyle(
                              fontSize: 18,
                              color: isselected3
                                  ? Colors.deepPurple
                                  : Colors.white),
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 5,
                        decoration: BoxDecoration(
                            color:
                                isselected3 ? Colors.deepPurple : Colors.white),
                      )
                    ],
                  )
                ],
              ),
              20.height(),
              Column(
                children: [
                  id == 1 ? trailers() : (id == 2 ? morelike() : comments()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
