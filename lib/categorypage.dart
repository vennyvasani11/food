import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatogaryPage extends StatelessWidget {
  const CatogaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CupertinoButton(
          child: Icon(Icons.arrow_back_ios, color: Colors.white,), 
          onPressed: (){Navigator.pop(context);}
        ),
        title: Text("Category Page"),
        actions: [
          CupertinoButton(
            child: Icon(Icons.refresh_rounded, color: Colors.white,),
            onPressed: (){
              showSnackBar(context, 'Data Successfully Update!');
            }
          )
        ],
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Text("Category Page")
        ),
      ),
    );
  }
  void showSnackBar(BuildContext context , String massage){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(massage, style: TextStyle(fontSize: 17, color: Colors.black),),
        backgroundColor: Colors.green
      )
    );
  }
}