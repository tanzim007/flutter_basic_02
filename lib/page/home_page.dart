import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_02/settings.dart';

class HomePage extends StatefulWidget {
  final String msg;
  const HomePage({Key? key, required this.msg}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count=0;
  final _nameController=TextEditingController();
  double _result = 0.0;
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
                      labelText: 'BDT'
                  ),


                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(

                    onPressed: (){
                      _calculate(ConversionType.DOLLAR);


                    },
                    child: const Text('USD')),
                ElevatedButton(

                    onPressed: (){
                      _calculate(ConversionType.GBP);


                    },
                    child: const Text('GBP')),
                ElevatedButton(

                    onPressed: (){
                      _calculate(ConversionType.EURO);


                    },
                    child: const Text('EURO')),
              ],
            ),
            const SizedBox(height: 20,),
            Text(_result.toStringAsFixed(1), style: Theme.of(context).textTheme.headline1,),

          ],
        ),
      ),

    );


  }
  _calculate(ConversionType type){
    final input = double.parse(_nameController.text);
    var rate = 0.0;
    switch(type){
      case ConversionType.DOLLAR:
        rate = dollarToBdt;
        break;
      case ConversionType.GBP:
        rate = gbtToBdt;
        break;
      case ConversionType.EURO:
        rate = euroToBdt;
        break;
    }

    setState((){
      _result = input/rate;
    });


  }


}
