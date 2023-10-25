import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled27/pages/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final name=TextEditingController();
  final LastName=TextEditingController();
  final Work=TextEditingController();
  final Tele=TextEditingController();
  final Web=TextEditingController();
  final Email=TextEditingController();
  Future Upload(String name,String LastName,String Work,String Tele,String Web,String Email)async{
    await FirebaseFirestore.instance.collection('Users').add({
      'name':name,
      'lastname':LastName,
       'work':Work,
        'tele':Tele,
         'web':Web,
          'email':Email
    });
    print("hassan");
  }
  @override
  void dispose() {
    // TODO: implement dispose
    name.dispose();
    LastName.dispose();
    Work.dispose();
    Tele.dispose();
    Email.dispose();
    Web.dispose();

    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('asstes/images/ca.webp'),
                ),
                Text('add photo',
                  style: TextStyle(color: Colors.deepPurpleAccent,
                  fontFamily: "Myfont"),
                ),
              ],
            ),
        Container(
          padding: EdgeInsets.all(2.0),

          margin: EdgeInsets.only(left: 0.0,top: 20),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))
                ),
                prefix: Icon(Icons.account_circle_outlined,color: Colors.deepPurpleAccent,),
                labelText:"Name"
            ),
            controller: name,
            onChanged: (Value){

            },
          ),
        ),


      Container(
        padding: EdgeInsets.all(2.0),
        margin: EdgeInsets.all(2.0),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0))
              ),
              prefix: Icon(Icons.account_circle_outlined,color: Colors.deepPurpleAccent,),
              labelText:"Last Name"
          ),
          controller: LastName,

          onChanged: (Value){

          },
        ),
      ),
      Container(
        padding: EdgeInsets.all(2.0),
        margin: EdgeInsets.all(2.0),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0))
              ),
              prefix: Icon(Icons.account_balance,color: Colors.deepPurpleAccent,),
              labelText:"Work"
          ),
          controller: Work,

          onChanged: (Value){

          },
        ),
      ),
      Container(
        padding: EdgeInsets.all(2.0),
        margin: EdgeInsets.all(2.0),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0))
              ),
              prefix: Icon(Icons.add_call,color: Colors.deepPurpleAccent,),
              labelText:"Telephone"
          ),
          controller: Tele,

          onChanged: (Value){

          },
        ),
      ),
      Container(
        padding: EdgeInsets.all(2.0),
        margin: EdgeInsets.all(2.0),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0))
              ),
              prefix: Icon(Icons.email,color: Colors.deepPurpleAccent,),
              labelText:"Email"
          ),
          controller: Email,

          onChanged: (Value){

          },
        ),
      ),
      Container(
        padding: EdgeInsets.all(2.0),
        margin: EdgeInsets.all(2.0),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0))
              ),
              prefix: Icon(Icons.web_outlined,color: Colors.deepPurpleAccent,),
              labelText:"Web"
          ),
          controller: Web,

          onChanged: (Value){

          },
        ),
      ),
          SizedBox(height: 50,),
          ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),onPressed: (){
            setState(() {
              Upload(name.text.trim(), LastName.text.trim(), Work.text.trim(), Tele.text.trim(), Web.text.trim(), Email.text.trim());
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));


            });
          }, child: Text("Save",style: TextStyle(fontSize: 15),))

        ],
      ),
          )),
    );
  }
}
