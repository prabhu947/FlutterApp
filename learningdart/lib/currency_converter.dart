
//currency_converter.dart
import 'package:flutter/material.dart';

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
        children:[const Text('Currency Calculator',
        style:  TextStyle(
          color:Colors.black,
          fontSize:25,
         // backgroundColor: Colors.white,
        ),
        ),const SizedBox(height:16),
         SizedBox(
          width:455,
          child:TextField(
          
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
          ),
          keyboardType:const TextInputType.numberWithOptions(
            decimal: true,
          ),
        )
         )
        ],
      ),
      ),
      );
  }
}