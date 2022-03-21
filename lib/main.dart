import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Task_One",
    theme: ThemeData.light(),
    home: const Chat(),
    debugShowCheckedModeBanner: false,
  )
  );
}

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
            padding: const EdgeInsets.only(left: 15.0),
            children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0, left: 20,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Chat", style: TextStyle(color: Colors.black,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold)
                        ,),
                      const SizedBox(width: 150,),
                      Icon(
                        Icons.add,
                        color: Colors.blue[500], size: 45.0,
                      ),
                      const SizedBox(width: 18,),
                      Transform.rotate(angle: 90 * pi / 180,
                        child: Icon(
                          Icons.search_outlined,
                          color: Colors.blue[500], size: 45.0,
                        ),)
                    ],
                  ),
                ),

              ],

              ),

              const DefaultTabController(initialIndex: 1, length: 2, child:
              TabBar(
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.blue,
                indicatorWeight: 1.0,
                labelColor: Colors.white,
                labelPadding: EdgeInsets.only(
                    right: 40.0, left: 10.0, top: 10.0),
                tabs: <Tab>[
                  Tab(
                    child: Text(
                      "Groups & People", style: TextStyle(color: Colors.blue),),
                  ),
                  Tab(
                    child: Text(
                      "Explore", style: TextStyle(color: Colors.blue),),
                  ),
                ],
              ),
              ),
              const SizedBox(height: 30.0,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: const [
                    Text("Top People", style: TextStyle(color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                    SizedBox(width: 170.0,),
                    Text("See all", style: TextStyle(color: Colors.blue,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const SizedBox(height: 20.0,),
              Container(
                height: 150.0,
                child: ListView(
                  padding: const EdgeInsets.only(left: 20.0),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30.0),
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [Image.asset("images/contact.jpg",
                              fit: BoxFit.fitHeight,),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5.0,),
                        Container(
                          padding: const EdgeInsets.all(30.0),
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [Image.asset("images/contact.jpg",
                              fit: BoxFit.fitHeight,),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5.0,),
                        Container(
                          padding: const EdgeInsets.all(30.0),
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [Image.asset("images/contact.jpg",
                              fit: BoxFit.fitHeight,),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5.0,),
                        Container(
                          padding: const EdgeInsets.all(30.0),
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [Image.asset("images/contact.jpg",
                              fit: BoxFit.fitHeight,),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5.0,),
                        Container(
                          padding: const EdgeInsets.all(30.0),
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [Image.asset("images/contact.jpg",
                              fit: BoxFit.fitHeight,),
                            ],
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
              const SizedBox(width: 15.0,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: const [
                    Text("Top Groups", style: TextStyle(color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
                    SizedBox(width: 215.0,),
                    Text("See all", style: TextStyle(color: Colors.blue,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const SizedBox(height: 20.0,),
              // make scrollable row using listView
              Container(
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0)),
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ListView.builder(scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Column(
                              children: const [
                                Icon(Icons.send, size: 40, color: Colors.blue,),
                                SizedBox(height: 10.0,),
                                Text("Ether Groups", textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Text("10.2k members", textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),)
                              ],
                            )

                        );
                      })
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: const [
                    Text("Trending groups", style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
                    SizedBox(width: 180.0,),
                    Text("See all", style: TextStyle(color: Colors.blue,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const SizedBox(height: 20.0,),
              // below code using List Generate
              // Container(
              //     height: 150,
              //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              //     padding: const EdgeInsets.only(left: 10.0),
              //     child: ListView(
              //       padding: const EdgeInsets.only(left: 10.0),
              //       scrollDirection: Axis.horizontal,
              //       children: [
              //         Container(
              //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              //           height: 150,
              //           width: 400,
              //           padding: const EdgeInsets.only(left: 10.0),
              //           child: ListView(
              //               scrollDirection: Axis.horizontal,
              //               children: List.generate(4, (int index){
              //                 return  Card(
              //                     color: Colors.white24,
              //                     child: Container(
              //                       width: 110,
              //                       height: 110,
              //                       child: Text("$index"),
              //                     )
              //                 );
              //               },
              //               )
              //           ),
              //         ),
              //       ],
              //     )
              // ),
              //making scrollable view using ListBuilder
              Container(
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0)),
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ListView.builder(scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Column(
                              children: const [
                                Icon(Icons.send, size: 40, color: Colors.blue,),
                                SizedBox(height: 10.0,),
                                Text("Ether Groups", style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                                ),
                                Text("10.2k members", style: TextStyle(
                                    color: Colors.grey, fontSize: 10),)
                              ],
                            )

                        );
                      })
              ),
            ]),
      ),
    );
  }
}
