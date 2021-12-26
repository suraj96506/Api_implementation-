import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewSCreen extends StatefulWidget {
  final String text;
  final calories;
  final protiens;
  final carbs;
  final grases;
  final image;
  NewSCreen(this.text, this.calories, this.protiens, this.carbs, this.grases,
      this.image);
  @override
  _NewSCreenState createState() => _NewSCreenState();
}

class _NewSCreenState extends State<NewSCreen> {
  String dropdownValue = "one";
  bool ViewVisible = false;
  bool ViewVisible1 = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        width: MediaQuery.of(context).size.width,
        height: ViewVisible == true
            ? ViewVisible1 == true
                ? MediaQuery.of(context).size.height * 1.93
                : MediaQuery.of(context).size.height * 1.5
            : ViewVisible1 == true
                ? MediaQuery.of(context).size.height * 1.3
                : MediaQuery.of(context).size.height * 1,
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 20, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.5)),
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/share.svg",
                        )),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.5)),
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/heart.svg")),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                widget.text,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  "Datos por 1 wrap - 180g preparado",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        widget.calories,
                        style: TextStyle(
                            color: Colors.grey[850],
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "calories",
                        style: TextStyle(
                            color: Colors.grey[850],
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        widget.protiens,
                        style: TextStyle(
                            color: Colors.grey[850],
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "protiens",
                        style: TextStyle(
                            color: Colors.grey[850],
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        widget.carbs,
                        style: TextStyle(
                            color: Colors.grey[850],
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "carbs",
                        style: TextStyle(
                            color: Colors.grey[850],
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        widget.grases,
                        style: TextStyle(
                            color: Colors.grey[850],
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "grases",
                        style: TextStyle(
                            color: Colors.grey[850],
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Porción",
                    style: TextStyle(
                        color: Colors.grey[850],
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Número porciones",
                    style: TextStyle(
                        color: Colors.grey[850],
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tipo de peso",
                    style: TextStyle(
                        color: Colors.grey[850],
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Agregar a",
                    style: TextStyle(
                        color: Colors.grey[850],
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  height: 35,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Center(child: Text("Agregar a Almuerzo")),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ingredientes",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          if (ViewVisible == false) {
                            ViewVisible = true;
                          } else {
                            ViewVisible = false;
                          }
                        });
                      },
                      icon: ViewVisible == false
                          ? Icon(Icons.keyboard_arrow_down_rounded)
                          : Icon(Icons.keyboard_arrow_up_rounded)),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Visibility(
                  visible: ViewVisible,
                  child: ViewVisible == true
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.55,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Ingredientes para:",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 150,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              suffixIcon: IconButton(
                                                  color: Colors.green,
                                                  onPressed: () {},
                                                  icon: Icon(Icons
                                                      .add_circle_outline)),
                                              prefixIcon: IconButton(
                                                  color: Colors.green,
                                                  onPressed: () {},
                                                  icon: Icon(Icons
                                                      .remove_circle_outline)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Tortilla de harina integral",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 150,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              suffixIcon: IconButton(
                                                  color: Colors.green,
                                                  onPressed: () {},
                                                  icon: Icon(Icons
                                                      .add_circle_outline)),
                                              prefixIcon: IconButton(
                                                  color: Colors.green,
                                                  onPressed: () {},
                                                  icon: Icon(Icons
                                                      .remove_circle_outline)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Lechuga",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 150,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              suffixIcon: IconButton(
                                                  color: Colors.green,
                                                  onPressed: () {},
                                                  icon: Icon(Icons
                                                      .add_circle_outline)),
                                              prefixIcon: IconButton(
                                                  color: Colors.green,
                                                  onPressed: () {},
                                                  icon: Icon(Icons
                                                      .remove_circle_outline)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Pepino",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 150,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              suffixIcon: IconButton(
                                                  color: Colors.green,
                                                  onPressed: () {},
                                                  icon: Icon(Icons
                                                      .add_circle_outline)),
                                              prefixIcon: IconButton(
                                                  color: Colors.green,
                                                  onPressed: () {},
                                                  icon: Icon(Icons
                                                      .remove_circle_outline)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Jamón de pav",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 150,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              suffixIcon: IconButton(
                                                  color: Colors.green,
                                                  onPressed: () {},
                                                  icon: Icon(Icons
                                                      .add_circle_outline)),
                                              prefixIcon: IconButton(
                                                  color: Colors.green,
                                                  onPressed: () {},
                                                  icon: Icon(Icons
                                                      .remove_circle_outline)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                  autofocus: false,
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0, primary: Colors.white),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Colors.green,
                                        size: 40,
                                      ),
                                      Text(
                                        "Agregar Ingrediente",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                " Los pesos corresponden a crudo, salvo que se indique lo contrario. -Disminuye/aumentar los ingredientes con los botones -/+- Deslizar a la izquierda para borrar algún ingrediente.",
                                overflow: TextOverflow.visible,
                                maxLines: 3,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              )
                            ],
                          ),
                        )
                      : Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Instrucciones",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          if (ViewVisible1 == false) {
                            ViewVisible1 = true;
                          } else {
                            ViewVisible1 = false;
                          }
                        });
                      },
                      icon: ViewVisible1 == false
                          ? Icon(Icons.keyboard_arrow_down_rounded)
                          : Icon(Icons.keyboard_arrow_up_rounded)),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Visibility(
                  visible: ViewVisible1,
                  child: ViewVisible1 == true
                      ? Container(
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset("assets/Bar.svg")),
                                  IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset("assets/Time.svg"))
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Lavar bien la lechuga y cortarlo en trozos.\nCortar el pepino en rodajas.",
                                    maxLines: 3,
                                    overflow: TextOverflow.clip,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "En una tortilla de harina colocar la lechuga\ncomo base, luego el pepino y el jamón.",
                                    maxLines: 3,
                                    overflow: TextOverflow.clip,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "3",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Enrollar todos los ingredientes con latortilla",
                                    maxLines: 3,
                                    overflow: TextOverflow.clip,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "4",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Cortar por la mitad",
                                    maxLines: 3,
                                    overflow: TextOverflow.clip,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "(Opcional: Calentar el wrap en un sartén)",
                                    maxLines: 3,
                                    overflow: TextOverflow.clip,
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      : Container())
            ],
          ),
        ),
      ),
    );
  }
}
