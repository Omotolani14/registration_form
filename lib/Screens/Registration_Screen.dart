
import 'package:flutter/material.dart';
import 'package:registration_form/Screens/Details_Screen.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState () => _RegistrationScreenState();
}
class _RegistrationScreenState extends State<RegistrationScreen>{
  final TextEditingController firstnameController= TextEditingController ();
  final TextEditingController lastnameController= TextEditingController ();
  final TextEditingController emailController= TextEditingController ();
  bool isRegistered = false;

 @override  
 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
    title:Text("RegistrationForm"),
    ),
    body:Padding(padding: EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment:MainAxisAlignment.center ,
      children: [
      TextField(controller: firstnameController,
      decoration: InputDecoration(labelText:"First Name"
       ),
      
      ),
      TextField(controller: lastnameController,
      decoration: InputDecoration(labelText: "Last Name"
      ),

      ),
      TextField(controller:emailController,
      decoration: InputDecoration(labelText: "Email Address"
      ),

      ),
      SizedBox(height:30,),
      GestureDetector(
        onTap: () {
          setState(() {
          isRegistered =!isRegistered;  
          });
        },
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color:isRegistered?Colors.greenAccent:Colors.blueAccent,
            borderRadius: BorderRadius.circular(10),

            
          ),
          child: Text(
            isRegistered?"Registration Sucessful":"Register me",
            style:TextStyle(
              color: Colors.black,
              fontSize: 15,
            )
          ),
          
        
          
        ),
      ),
         SizedBox(height: 30,),
         if(isRegistered)
         ElevatedButton(onPressed:(){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailsScreen(
            firstname: firstnameController.text,
             lastname: lastnameController.text,
              email: emailController.text
            
          )
          )
           );

         }, child: Text("Veiw registration details")
         )
        
      ],
    ),
    ) ,
  );
 }
}