import 'package:flutter/material.dart';
import 'package:project1/screens/ggbb.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final names=['ran','ebi','mz','shan','vishnu','anshif','anshid','kd','aswathy','nithya','rasikha'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('simplecontactlist'),),
      body: Container(
        height: double.infinity,
        width: double.infinity,

        child: ListView.builder(itemBuilder: (BuildContext context,index){
          return ListTile(leading:CircleAvatar(
              child: Text(names[index][0].toUpperCase()),
            backgroundColor: Colors.lightBlue[100 * (index % 13+2)],

            // backgroundImage: AssetImage('assets/avatar.jpg'),
          ),
            title: Text(names[index]),subtitle: Text('9946170163'),trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage()));
                },
                icon:Icon(Icons.arrow_forward_sharp)),);
        },itemCount: names.length,),

      ),

    );
  }
}
