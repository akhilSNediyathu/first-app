



import 'package:flutter/material.dart';
import 'package:study/LoginPage.dart';


class InnerPage extends StatefulWidget {
  const InnerPage({super.key});

  @override
  State<InnerPage> createState() => _InnerPageState();
}

class _InnerPageState extends State<InnerPage> {
  @override
  Widget build(BuildContext context) {
      List <String> list=['Bollywood','Hollywood','Mollywood','Kollywood'] ;
    return Scaffold(
      appBar: AppBar(title: Text('Movies',),
      actions: [
        IconButton(onPressed: (
          
        ){
          exit(context);
        }, icon: Icon(Icons.exit_to_app))
      ],
      
      
      ),
      body:SafeArea(
        child: Container(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index)
          {
            return Column(
              children: [const SizedBox(height: 30,),
              ListTile(
                leading: SizedBox(height: 60, width: 60,
                 child: ClipRRect(
                                  borderRadius: index % 2 == 0
                                      ? BorderRadius.circular(25)
                                      : BorderRadius.circular(0),
                                  child: Container(
                                      color: Colors.amber,),
                                      
                                      
              )
                ),
                title: Text(list[index]),
                

              ),
              Divider(thickness: 3,)
              ,
              ]
            );
          }
          )
        ),
      ),

    );
  }
}
void exit(ctx){
  
  showDialog(context: ctx, builder: (ctx1){
    return AlertDialog(
      title: const Text('Sign out!'),
      content:const Text('press sign out to confirm'),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(ctx1);

        }, child: const Text('cancel')),
        TextButton(onPressed: (){ 
           Navigator.pushReplacement(ctx, MaterialPageRoute(builder: (context) => LoginPage()));
              
        }, child: const Text('sign out'))
      ] ,
    );
  });

}

