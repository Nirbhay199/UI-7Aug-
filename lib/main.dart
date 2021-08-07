import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Wishlist()
    );
  }
}
class Wishlist extends StatefulWidget {

  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  List<String> size=["45","56","53","32"];
  String currentSize="45";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Wishlist",style: 
        TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
        actions: [
          IconButton(icon:Icon(Icons.shopping_bag_outlined,color: Colors.black,) ,onPressed: (){},) ,
        ],
      ),
      bottomNavigationBar: BottomAppBar(),
      backgroundColor: Colors.grey[350],
      body:ListView.builder(
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) { 
        return  Padding(
          padding: const EdgeInsets.only(top:8.0,left: 10,right: 10,bottom:5),
          child: Container(
            height: 190,
decoration:BoxDecoration(                        
    borderRadius: BorderRadius.circular(20),  
color: Colors.white

),
            child:Column(children: [ Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround ,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:20,left:10.0,right: 10,bottom:10,),
                  child: Column(                crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("Iron Face Half Sleeve T-Shirt",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
SizedBox(height: 2.0,),

Row(
  children: [
                          Text("\$349",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                     SizedBox(width: 4.0,),
                      Text("\$349",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15,decoration: TextDecoration.lineThrough),),

  ],
),
SizedBox(height: 4.0,),
Row(
  children: [
                      Text("You Saved ",style: TextStyle(fontWeight: FontWeight.w500,fontSize:16),),
                      Text("\$ 450 ! ",style: TextStyle(fontWeight: FontWeight.w500,fontSize:16),),

  ],
),
Row(children: [
                        Text("Size:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),

SizedBox(width: 5.0,),
DropdownButton<String>(items: size.map(( String e) {
  return DropdownMenuItem<String>(
    value: e,
    child: Text(e,style: TextStyle(fontWeight: FontWeight.w600),),);


}
).toList(),
onChanged: (String newSize){
  setState(() {
      this.currentSize=newSize;
    });
},
value: currentSize,

),
],),

                    ],
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
image: DecorationImage(image: AssetImage("assets/image1.jpg"),
fit: BoxFit.cover
)
                  ),
                ),
              ],
            ),
            
      Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  TextButton(onPressed: (){}, child: Text("Remove",style: TextStyle(color: Colors.black),),),
                                   TextButton(onPressed: (){}, child: Text("Add to List",style: TextStyle(color: Colors.black),),),

                ],)
            
            ]),
          ),
        );
       },) ,
    );
  }
}