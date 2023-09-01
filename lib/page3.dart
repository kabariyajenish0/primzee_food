import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //leading: Drawer(),
          ),
      // drawer: Drawer(
      //   elevation: 10,
      //   backgroundColor: Colors.indigo.shade200,
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: List.generate(
      //           10,
      //           (index) => Container(
      //                 height: 100,
      //                 width: 200,
      //                 margin: EdgeInsets.all(10),
      //                 color: Colors.yellow.shade200,
      //               )),
      //     ),
      //   ),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.teal.shade200,
                    elevation: 20,
                    title: Text("Title"),
                    content: Container(
                        height: 200,
                        width: 200,
                        color: Colors.yellow.shade200,
                        child: Text("Open Dialoge")),
                    actions: [
                      Container(
                        height: 35,
                        width: 100,
                        color: Colors.indigo.shade200,
                        child: Center(child: Text("Yes")),
                      ),
                      Container(
                        height: 35,
                        width: 100,
                        color: Colors.indigo.shade200,
                        child: Center(child: Text("No")),
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              height: 35,
              width: 100,
              color: Colors.indigo.shade200,
              child: Center(child: Text("Open Dialoag")),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return BottomSheet(
                      onClosing: () {},
                      builder: (BuildContext context) {
                        return Container(
                          height: 200,
                          width: 300,
                          color: Colors.pink.shade400,
                        );
                      },
                    );
                  },
                );
              },
              child: Container(
                height: 35,
                width: 100,
                color: Colors.yellow.shade200,
                child: Center(child: Text("Bottom Sheet")),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  elevation: 10,
                  backgroundColor: Colors.teal.shade100,
                  content: Text("Hello"),
                  duration: Duration(seconds: 2),
                ));
              },
              child: Container(
                height: 35,
                width: 100,
                color: Colors.green.shade200,
                child: Center(child: Text("SnackBar")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
