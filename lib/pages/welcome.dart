import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 35.0,
                  ),
                  Text(
                    " Contact",
                    style: TextStyle(
                      fontFamily: "Myfont",
                      color: Colors.blue,
                      fontSize: 30.0,
                    ),
                  ),
                  Center(
                    child: ClipRRect(
                      child: Image.asset(
                        "asstes/images/pp.png",
                        width: 200,
                        height: 500,
                      ),
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },

                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),

                    child: Text(
                      "add new contact",
                      style: TextStyle(fontSize: 24, fontFamily: "Myfont",color: Colors.blue,),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                ],
              ),
              Positioned(
                left: 0,
                width: 100.0,
                child: Image.asset("asstes/images/main_top.png"),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset("asstes/images/main_bottom.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
