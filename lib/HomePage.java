import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 final String msg;
 const HomePage({Key? key, required this.msg}) : super(key: key);

 @override
 State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int _count=0;
 final _nameController=TextEditingController();
 @override
 void dispose(){

 }
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text(widget.msg),
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [

             Padding(padding: const EdgeInsets.symmetric(horizontal: 80.0,),

               child: TextField(
                 controller:_nameController ,
                 decoration: InputDecoration(
                   filled: true,
                   labelText: 'Entter your name'
                 ),


               )),
           ElevatedButton(

               onPressed: (){
               final name=_nameController.text,
               print;(name);


               },
               child: const Text('Show your name')),
             const Text('you have pushed the butten this many time'),
           Text('$_count', style: Theme.of(context).textTheme.headline1,),

         ],
       ),
     ),
     floatingActionButton: FloatingActionButton(
       onPressed:_increament ,
       child: Icon(Icons.add),
     ),
   );
 }
 _increament(){
   setState((){
     _count++;
   });

 }
}
