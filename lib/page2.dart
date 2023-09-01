import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<Map<String, dynamic>> list = [
    {
      'image': "assets/image/hamburger.png",
      'image2': "assets/image/hamburger(2).png"
    },
    {
      'image': "assets/image/t-shirt.png",
      'image2': "assets/image/t-shirt (2).png"
    },
    {
      'image': "assets/image/medicine.png",
      'image2': "assets/image/medicine(2).png"
    },
    {'image': "assets/image/bread.png", 'image2': "assets/image/bread(2).png"},
    {'image': "assets/image/shine.png", 'image2': "assets/image/shine (2).png"},
  ];
  List<Map<String, dynamic>> list2 = [
    {
      'image': "assets/image/tree.png",
      'name': "Oelivered",
      'name2': "Aoy primzee"
    },
    {'image': "assets/image/free.png", 'name': "Free", 'name2': "Delivery"},
    {'image': "assets/image/special.png", 'name': "Special", 'name2': "Offers"},
  ];

  List<Map<String, dynamic>> list3 = [
    {
      'image': "assets/image/mushroom.jpeg",
      'image2': "assets/image/chilli.png",
      'name': "1 x Mushroom Soup...",
      'name2': "85,000",
    },
  ];

  List<Map<String, dynamic>> list4 = [
    {'image': "assets/image/wall.jpeg", 'name': "Wallet"},
    {'image': "assets/image/add.jpeg", 'name': "Addresses"},
    {'image': "assets/image/fav1.jpeg", 'name': "Favorites"},
    {'image': "assets/image/setting.jpeg", 'name': "Settings"},
  ];

  int selectindex = 0;
  // final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Column(
        children: [
          Container(
            height: 660,
            width: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color(0xffFFDE00),
            ),
            child: Column(
              children: [
                Container(
                  height: 610,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 30, bottom: 60),
                        child: Row(children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.close,
                                color: Colors.grey.shade500,
                                size: 20,
                              )),
                          Text(
                            "PRIMZEE",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ]),
                      ),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/image/user.png",
                              ),
                              fit: BoxFit.contain),
                          color: Color(0xffFFDE00),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 20),
                        child: Text(
                          "Florence Dean",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 12,
                            child: Image.asset("assets/image/fav.png",
                                color: Colors.yellow.shade500,
                                height: 13,
                                width: 13),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "My orders",
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey.shade700),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        width: 190,
                        height: 232,
                        //  color: Colors.black12,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          // scrollDirection: Axis.vertical,
                          padding: EdgeInsets.zero,
                          itemCount: list4.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 5,
                                  childAspectRatio: 2 / 2.5),
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 50,
                              height: 60,
                              //     color: Colors.black12,
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 15),
                                  child: Image(
                                    image: AssetImage(
                                      list4[index]["image"],
                                    ),
                                    width: 32,
                                    height: 32,
                                  ),
                                ),
                                Text(
                                  list4[index]["name"],
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey.shade600),
                                )
                              ]),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Log out",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white10,
        automaticallyImplyLeading: true,
        // leading: IconButton(
        //   onPressed: () => scaffoldkey.currentState?.openDrawer(),
        //   icon: Icon(
        //     Icons.menu,
        //     color: Colors.black,
        //   ),
        //   //    onPressed: () => Scaffold.of(context).openDrawer(),
        // ),
        title: Text(
          "PRIMZEE",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Color(0xffFDDF02),
              child: Icon(
                Icons.search,
                size: 16,
                color: Colors.black,
              ),
            ),
          )
        ],
        elevation: 0,
      ),
      backgroundColor: Color(0xfff2f3f5),
      body: Column(children: [
        Container(
          height: 227,
          width: 365,
          decoration: BoxDecoration(
              color: Color(0xffFFDE00),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40),
              )),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 365,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(40))),
                child: ListView.builder(
                  itemCount: list.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectindex = index;
                            });
                          },
                          child: Container(
                            height: 55,
                            width: 35,
                            //   color: Colors.red,
                            margin: EdgeInsets.only(left: 20, right: 15),
                            child: Column(
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      //   color: Colors.red,
                                      image: selectindex == index
                                          ? DecorationImage(
                                              image: AssetImage(
                                                list[index]["image2"],
                                              ),
                                              fit: BoxFit.fill)
                                          : DecorationImage(
                                              image: AssetImage(
                                                list[index]["image"],
                                              ),
                                              fit: BoxFit.fill)),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                selectindex == index
                                    ? Icon(
                                        Icons.arrow_drop_down,
                                        size: 20,
                                      )
                                    : SizedBox()
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 20, top: 20, bottom: 20),
                child: Row(
                  children: [
                    Text("Delivering to",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 1, color: Colors.black12)
                    ],
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
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 13),
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
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Container(
            height: 60,
            width: 365,
            // color: Colors.black12,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: list2.length,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Container(
                      width: 125,
                      height: 54,
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 1)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(children: [
                          Image(
                            image: AssetImage(
                              list2[index]["image"],
                            ),
                            width: 25,
                            height: 30,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(list2[index]["name"],
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade700)),
                              Text(list2[index]["name2"],
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade700)),
                            ],
                          )
                        ]),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.replay,
                      size: 14,
                      color: Color(0xffFDDF02),
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Recent Orders",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "View all",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800),
                  ),
                  Container(width: 45, height: 1, color: Colors.black),
                ],
              ),
            ],
          ),
        ),
        Container(
          // color: Colors.black12,
          height: 170,
          width: 365,
          child: ListView.builder(
            itemCount: 1,
            physics: BouncingScrollPhysics(),
            //       scrollDirection: Axis.horizontal,
            //    padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Container(
                      height: 170,
                      width: 319,
                      margin: EdgeInsets.only(right: 1),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 1, color: Colors.black12)
                        ],
                        borderRadius: BorderRadius.circular(15),
                        //  color: Colors.blueGrey,
                        image: DecorationImage(
                            image: AssetImage(list3[index]["image"]),
                            fit: BoxFit.fill),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15, right: 15),
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
                                                  fontWeight: FontWeight.w500)),
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
                            width: 319,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(
                                    15,
                                  ),
                                )),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Image(
                                        image:
                                            AssetImage(list3[index]["image2"]),
                                        height: 37,
                                        width: 37),
                                    SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          list3[index]["name"],
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                        SizedBox(height: 3),
                                        Row(
                                          children: [
                                            Text(list3[index]["name2"],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15)),
                                            Icon(Icons.currency_lira, size: 15),
                                          ],
                                        ),
                                      ],
                                    )
                                  ]),
                                  CircleAvatar(
                                    radius: 11,
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.refresh,
                                      size: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
              const EdgeInsets.only(left: 27, right: 20, top: 25, bottom: 15),
          child: Row(
            children: [
              Text("Recomended",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
        Container(
          width: 365,
          height: 90,
          // color: Colors.black12,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Container(
                width: 165,
                height: 165,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/image/Burger.jpg"),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(18),
                ),
                margin: EdgeInsets.only(left: 20, top: 1, bottom: 1, right: 20),
              ),
              Container(
                width: 165,
                height: 165,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/image/#.jpg"),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(18),
                ),
                margin: EdgeInsets.only(top: 1, bottom: 1),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
