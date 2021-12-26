import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/way.dart';
import 'API_services.dart';
import 'Usermodel.dart';

class Searchuser extends SearchDelegate {
  final namecontroller = TextEditingController();
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(
          Icons.cancel_outlined,
          color: Colors.black.withOpacity(0.5),
        ),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios));
  }

  FetchUser userList = FetchUser();
  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<List<Userlist>>(
        future: userList.getUserList(query: query),
        builder: (context, snapshot) {
          var data = snapshot.data;
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.grey,
              ),
            );
          }
          return ListView.builder(
              itemCount: data?.length,
              itemBuilder: (context, index) {
                return TextField(
                  onTap: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        isDismissible: true,
                        enableDrag: true,
                        isScrollControlled: true,
                        backgroundColor: Colors.black.withOpacity(0.4),
                        context: context,
                        builder: (context) => DraggableScrollableSheet(
                              initialChildSize: 0.9,
                              builder: (_, controller) => Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white,
                                ),
                                child: NewSCreen(
                                    "${data[index].name}",
                                    '${data[index].calorie}',
                                    '${data[index].protein}',
                                    '${data[index].carbs}',
                                    '${data[index].fats}',
                                    '${data[index].image}'),
                              ),
                            )

                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   showModalBottomSheet(
                        //       shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.only(
                        //               topLeft: Radius.circular(20),
                        //               topRight: Radius.circular(20))),
                        //       context: context,
                        //       builder: (BuildContext bc) {
                        //         return NewSCreen(
                        //             "${data[index].name}",
                        //             '${data[index].calorie}',
                        //             '${data[index].protein}',
                        //             '${data[index].carbs}',
                        //             '${data[index].fats}',
                        //             '${data[index].image}');
                        //       });
                        // }));
                        );
                  },
                  keyboardType: TextInputType.none,
                  readOnly: true,
                  controller: namecontroller,
                  decoration: InputDecoration(
                      hintText: '${data[index].name}',
                      filled: true,
                      focusColor: Colors.grey,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.none, color: Colors.grey))),
                );
              });
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(child: Text("Search"));
  }
}
