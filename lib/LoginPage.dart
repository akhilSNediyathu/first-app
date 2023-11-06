import 'package:flutter/material.dart';
import 'package:study/InnerPage.dart';


// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
   LoginPage({super.key});

var a ="akhil";
var b = "9656";
TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
      ), 
        body: 
      
        SafeArea(child: Container(decoration: const BoxDecoration(color: Color.fromARGB(255, 199, 223, 224)),
          padding: const EdgeInsets.all(10),
          
          child: Center(
            child: Column(
              
              children: [
              const SizedBox(height: 100,),
              TextFormField(
                controller: username,
                
                decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'username'),
                
              ),
              const SizedBox(height: 20,),
              TextFormField(
                controller: password,
                obscureText:true,
                decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'password'),
                
              ),
              ElevatedButton(
                
                 onPressed:(){
                  if (a==username.text&&b==password.text){
                    
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(ctx){
                    return const InnerPage();
                  },
                  ),
                  );}
                  else {
  
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(

      backgroundColor: Colors.red,
      content: Text('invalid user'),
      duration: Duration(seconds: 2),
    ),
  );
}

                }, child: const Text('Login'))
            ] ,
            
            ),
          ),
        )),   
    );
  }
}