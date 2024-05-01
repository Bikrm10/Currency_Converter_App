import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});
  

  @override
  State <CurrencyConverterMaterialPage> createState() =>
  _CurrencyConverterMaterialPageState();

  

}
class _CurrencyConverterMaterialPageState extends State <CurrencyConverterMaterialPage>{
  
 
  double result =0;
  final TextEditingController textEditingController =  TextEditingController();

  @override
  Widget build(BuildContext context){
  final border = OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2.0,
                    style: BorderStyle.solid,
                    
                  ),
                  borderRadius: BorderRadius.circular(10),
                  );
    return   Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        centerTitle: true,
        title: const Text("Currency Converter",
              ),
        ),
        body: Center(
          
          child: Column(mainAxisAlignment: MainAxisAlignment.center,children:
           [
            Text(
            'Rs. ${result!=0? result.toStringAsFixed(2):result.toStringAsFixed(0)}',
            style: const TextStyle(fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 251, 249, 249)
            ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  ),
              
                  decoration: InputDecoration(
                    hintText: "Please Input Currency in USD",
                    hintStyle: const TextStyle(color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                
                  enabledBorder: border,
                    ),
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  
                 ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(onPressed: (){
                setState(() {
                   result = double.parse(textEditingController.text)*134.27;
                });
               
              },
              style:  TextButton.styleFrom(
                backgroundColor:Colors.black,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity,50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
               
                
                 
                child: const Text("Convert"),
                ),
            )
             
            ],
        ),
        ),
      );
  }
}

