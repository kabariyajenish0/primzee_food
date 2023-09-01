import 'package:flutter/material.dart';
import 'package:primzee_food/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<Map<String, dynamic>> list = [
    {
      'image': "assets/image/mc beeghley.png",
      'image2': "assets/image/mc.png",
      'name': "Mc Donald's Beeghley",
      'name2': "It is often frustrsting to attempt to..."
    },
    {
      'image': "assets/image/2.png",
      'image2': "assets/image/mc.png",
      'name': "Mc Donald's Beeghley",
      'name2': "It is often frustrsting to attempt to..."
    },
  ];

  List<Map<String, dynamic>> list2 = [
    {
      'image': "assets/image/starbuck.png",
      'name': "30 - 35 mins",
      'name2': "min. 25,00"
    },
    {
      'image': "assets/image/subway.png",
      'name': "30 - 35 mins",
      'name2': "min. 25,00"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F3F5),
      body: Column(children: [
        Container(
          height: 105,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 1)]),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 35),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 30,
                      ),
                      SizedBox(width: 7),
                      Text(
                        "PRIMZEE",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffFDDF02),
                    child: Icon(
                      Icons.search_rounded,
                      size: 18,
                      color: Colors.black,
                    ),
                  )
                ]),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 35, right: 20, top: 20, bottom: 20),
          child: Row(
            children: [
              Text("Delivering to",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
        Container(
          height: 50,
          width: 320,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(blurRadius: 1, color: Colors.black12)],
              borderRadius: BorderRadius.circular(40)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.beenhere_outlined,
                      size: 18,
                      color: Colors.yellow.shade600,
                    ),
                    Text(
                      "  Home  .  ",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "4405 Beeghley Street",
                      style:
                          TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    ),
                  ],
                ),
                Icon(
                  Icons.gps_fixed_outlined,
                  color: Colors.black54,
                  size: 15,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 35, right: 20, top: 30, bottom: 20),
          child: Row(
            children: [
              Text(
                "Featured Restaurants",
                style: TextStyle(fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Container(
          // color: Colors.black12,
          height: 180,
          width: 365,
          child: ListView.builder(
            itemCount: list.length,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page2()));
                      },
                      child: Container(
                        height: 180,
                        width: 300,
                        margin: EdgeInsets.only(right: 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          //  color: Colors.blueGrey,
                          image: DecorationImage(
                              image: AssetImage(list[index]["image"]),
                              fit: BoxFit.fill),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 27,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12, right: 12),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("7,9",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            Icon(
                                              Icons.favorite,
                                              color: Colors.black,
                                              size: 13,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(
                                      15,
                                    ),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(children: [
                                  Image(
                                      image: AssetImage(list[index]["image2"]),
                                      height: 35,
                                      width: 35),
                                  SizedBox(width: 18),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(list[index]["name"],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15)),
                                      SizedBox(height: 3),
                                      Text(list[index]["name2"],
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11)),
                                    ],
                                  )
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 20, top: 40, bottom: 20),
          child: Row(
            children: [
              Text("Recomended",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
        Container(
          width: 365,
          height: 150,
          //   color: Colors.black12,
          child: ListView.builder(
            //    padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: list2.length,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  Container(
                    width: 165,
                    height: 165,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    margin: EdgeInsets.only(
                      left: 16,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image(
                              image: AssetImage(
                                list2[index]["image"],
                              ),
                              height: 60,
                              width: 80,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(list2[index]["name"],
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400)),
                                    Text(list2[index]["name2"],
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600))
                                  ],
                                ),
                                Container(
                                  width: 50,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 7, right: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("9,9",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600)),
                                          Icon(
                                            Icons.favorite,
                                            color: Colors.black,
                                            size: 13,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ]),
                  )
                ],
              );
            },
          ),
        )
      ]),
    );
  }
}
