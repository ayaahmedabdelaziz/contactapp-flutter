Column(
children: [
SizedBox(height: 200,
child: Container(
padding: EdgeInsets.all(2.0),
margin: EdgeInsets.only(left: 0.0,top: 120),
child: TextField(
decoration: InputDecoration(
border: OutlineInputBorder(
borderRadius: BorderRadius.all(Radius.circular(25.0))
),
prefix: Icon(Icons.account_circle_outlined,color: Colors.deepPurpleAccent,),
labelText:"Name"
),
onChanged: (Value){

},
),
),
),

Container(
padding: EdgeInsets.all(2.0),
margin: EdgeInsets.all(5.0),
child: TextField(
decoration: InputDecoration(
border: OutlineInputBorder(
borderRadius: BorderRadius.all(Radius.circular(25.0))
),
prefix: Icon(Icons.account_circle_outlined,color: Colors.deepPurpleAccent,),
labelText:"Last Name"
),
onChanged: (Value){

},
),
),
Container(
padding: EdgeInsets.all(2.0),
margin: EdgeInsets.all(5.0),
child: TextField(
decoration: InputDecoration(
border: OutlineInputBorder(
borderRadius: BorderRadius.all(Radius.circular(25.0))
),
prefix: Icon(Icons.account_balance,color: Colors.deepPurpleAccent,),
labelText:"Work"
),
onChanged: (Value){

},
),
),
Container(
padding: EdgeInsets.all(2.0),
margin: EdgeInsets.all(5.0),
child: TextField(
decoration: InputDecoration(
border: OutlineInputBorder(
borderRadius: BorderRadius.all(Radius.circular(25.0))
),
prefix: Icon(Icons.add_call,color: Colors.deepPurpleAccent,),
labelText:"Telephone"
),
onChanged: (Value){

},
),
),
Container(
padding: EdgeInsets.all(2.0),
margin: EdgeInsets.all(5.0),
child: TextField(
decoration: InputDecoration(
border: OutlineInputBorder(
borderRadius: BorderRadius.all(Radius.circular(25.0))
),
prefix: Icon(Icons.email,color: Colors.deepPurpleAccent,),
labelText:"Email"
),
onChanged: (Value){

},
),
),
Container(
padding: EdgeInsets.all(2.0),
margin: EdgeInsets.all(5.0),
child: TextField(
decoration: InputDecoration(
border: OutlineInputBorder(
borderRadius: BorderRadius.all(Radius.circular(25.0))
),
prefix: Icon(Icons.web_outlined,color: Colors.deepPurpleAccent,),
labelText:"Web"
),
onChanged: (Value){

},
),
),
],
),