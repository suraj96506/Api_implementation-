import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/Search.dart';
import 'package:flutter_complete_guide/Usermodel.dart';

import 'API_services.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FetchUser userList = FetchUser();
  //colors
  Color click = Colors.greenAccent.withOpacity(0.7);
  Color noClick = Colors.white;
  int change = -1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: true,
      child: Scaffold(
        body: FutureBuilder<List<Userlist>>(
            future: userList.getUserList(),
            builder: (context, snapshot) {
              var data = snapshot.data;
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.grey,
                  ),
                );
              }
              return SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.height,
                  margin: EdgeInsets.only(left: 25, right: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "BASE DE",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              " DATOS",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 40,
                        child: TextField(
                          onTap: () {
                            showSearch(
                                context: context, delegate: Searchuser());
                            print("1");
                          },
                          keyboardType: TextInputType.none,
                          readOnly: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none),
                              fillColor: Colors.grey.withOpacity(0.5),
                              filled: true,
                              focusColor: Colors.grey,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              prefixIcon: IconButton(
                                onPressed: () {
                                  showSearch(
                                      context: context, delegate: Searchuser());
                                },
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  change = 0;
                                });
                              },
                              child: Text(
                                "BASE DE DATOS",
                                style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 15,
                                    color: Colors.black),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: change == 0 ? click : noClick,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(color: click),
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  change = 1;
                                });
                              },
                              child: Text(
                                "FAVORITOS",
                                style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 15,
                                    color: Colors.black),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: change == 1 ? click : noClick,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(color: click),
                                      borderRadius: BorderRadius.circular(15))),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      // Container(
                      //   height: MediaQuery.of(context).size.height,
                      //   child: ListView.builder(
                      //       itemCount: data?.length,
                      //       itemBuilder: (context, index) {
                      //         return TextField(
                      //           readOnly: true,
                      //           decoration: InputDecoration(
                      //             prefixIcon: IconButton(
                      //               onPressed: () {},
                      //               icon: Image.asset('${data[index].image}'),
                      //             ),
                      //             label: Text('${data[index].ingredients}'),
                      //           ),
                      //         );
                      //       }),
                      // ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
