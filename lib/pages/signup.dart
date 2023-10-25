import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget UserCard(String Work,String name,String lastname,String tele,String email,String web,){
    return Column(
      children: [
        SizedBox(height: 30,),
        Container(height: 200,width: 450,
          color: Colors.purpleAccent[100],
          child:Row(
            children: [
              SizedBox(width: 30,),
              Column(
                children: [
                  SizedBox(height: 40),

                  CircleAvatar(child: Image.network('https://i.imgur.com/BG4U1zh.jpg',fit: BoxFit.fill,),),
                ],
              ),
              SizedBox(width: 50,),
              Column(children: [
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 50,),
                    Text(Work,style: TextStyle(fontSize: 15),),
                    SizedBox(width: 10,),
                    Text(name+lastname,style: TextStyle(fontSize: 20),),
                  ],
                ),
                SizedBox(height: 20,),
                Text(tele,style: TextStyle(fontSize: 15),),
                SizedBox(height: 30,),
                Text(email,style: TextStyle(fontSize: 15),),
                SizedBox(height: 30,),
                Text(web,style: TextStyle(fontSize: 15),),

              ],)

            ],
          ) ,
        ),
      ],
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent[200],
        title:Text('Users') ,),
      body:StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('Users').snapshots(),
          builder:(context,AsyncSnapshot snapshot){
            if(snapshot.connectionState==ConnectionState.waiting){
              return Center(child: CircularProgressIndicator(color: Colors.cyan,),);
            }
            else if (snapshot.connectionState==ConnectionState.active){
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (BuildContext context,int index){
                    return UserCard(
                      snapshot.data!.docs[index]['work'],
                      snapshot.data!.docs[index]['name'],
                      snapshot.data!.docs[index]['lastname'],
                      snapshot.data!.docs[index]['tele'],
                      snapshot.data!.docs[index]['email'],
                      snapshot.data!.docs[index]['web'],



                    );
                  });
            }
            return Center(child:Text('something went wrong...',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 30)) ,);

          } )

    );
  }
}
