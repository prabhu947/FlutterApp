
//currency_converter.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import  'dart:developer' as developer;
import 'package:flutter/foundation.dart';

class CurrencyConverterMaterialPage extends StatelessWidget{
   const CurrencyConverterMaterialPage({super.key});
   
  @override
  Widget build(BuildContext context){
  
    final border=OutlineInputBorder(
              borderSide:const BorderSide(
                color:Colors.red,
                width:02.0,
                style:BorderStyle.solid,
                strokeAlign:BorderSide.strokeAlignOutside,
              ),
              borderRadius:BorderRadius.circular(40),
            );
    return   Scaffold(
      backgroundColor: Colors.blue,
      body:Center(
        child:
        Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center,
        children:[
          Container(
            padding:const EdgeInsets.all(10),
            margin:const EdgeInsets.all(10),
           
          child: const Text('Currency Calculator',
          style:  TextStyle(
            color:Colors.black,
            fontSize:25,
           // backgroundColor: Colors.white,
          ),
          ),
        ),const SizedBox(height:16),
         SizedBox(
          width:455,
          child:Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
            
            style:const TextStyle(
              color:Colors.black, 
              //backgroundColor:Colors.white,
            ),
            decoration:InputDecoration(
              hintText:'please enter your amount in USD',
              hintStyle:const TextStyle(
                color:Colors.black,
              ),
             prefixIcon:const Icon(Icons.monetization_on),
              prefixIconColor:Colors.black,
              fillColor:Colors.white,
              filled:true,
              focusedBorder:border,
              enabledBorder:border,
            //prabhu singh rajput
            ),
            keyboardType:const TextInputType.numberWithOptions(
              decimal: true,
            ),
            inputFormatters:[FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))],
                  ),
          )
        ),
        ElevatedButton(
          onPressed:(){
            //debug,release,profile(mixture of debug,release)
            if(kDebugMode){
            print("button Clicked");
          }
          }, 
        style:
        TextButton.styleFrom(
          backgroundColor:Colors.black,
        ),
        child:const Text('Convert')),
        Container(
  decoration: BoxDecoration(
    border: Border.all(color: Colors.grey), // Border color
    borderRadius: const BorderRadius.all(Radius.circular(10.0)), // Rounded corners
  ),
  padding: const EdgeInsets.all(16.0), // Padding inside the container
  child:const  Text(
    'hello',
    style: TextStyle(
      fontSize: 18.0,
    ),
  ),
)

        ],
         ),
      ),
      );
  }
}