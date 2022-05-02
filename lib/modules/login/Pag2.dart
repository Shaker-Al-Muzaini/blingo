// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Login_pag  extends StatelessWidget {
  var email_controller=TextEditingController();
  var password_controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children:  [
                const Text('Login',
                style:TextStyle(
                  color:Colors.black,
                  fontSize:40,
                  fontFamily:'cairo',
                  fontWeight:FontWeight.w700,
                  
                
                )
                ),
                const SizedBox(
                  height: 40,
                ),
                 TextField(
                  controller: email_controller,
                  decoration:const InputDecoration(
                    
                    labelText:'User Name',
                    prefixIcon:Icon(Icons.account_circle),          
                    border:OutlineInputBorder(),                
                  ),
                  style:const TextStyle(
                    color:Colors.black,
                    fontFamily:'cairo',
                    fontSize: 24,
                  ),
                  keyboardType:TextInputType.text,              
                ),
                const SizedBox(height:20),
                 TextField( 
                controller:password_controller,
                decoration:const InputDecoration(          
                labelText:'Password',
                prefixIcon:Icon(Icons.lock),
                suffixIcon:Icon(Icons.remove_red_eye),         
                border:OutlineInputBorder(),                
                ),
                style:const TextStyle(
                  color:Colors.black,
                  fontFamily:'cairo',
                  fontSize: 24,
                ),
                keyboardType:TextInputType.visiblePassword,
                obscureText:true,          
                ),
                 const SizedBox(height:29),
        
               // ignore: avoid_unnecessary_containers
               Container(
                 width:double.infinity,
                 color:Colors.blue[600],
                child: MaterialButton(
                onPressed:() {
                  print(email_controller.text);
                  print(password_controller.text);
                },
                child: const Text('LOGIN',
                style:TextStyle(color:Colors.white))
                      ),
              ),
            const SizedBox(
              height:20,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:  [
                const Text('Don\'t have an account?'),
                TextButton(onPressed:(){},child: const Text('Register Now')),
                
              ],
            
            )
            ],
            
          ),
          
          ),
          
        ),
      ),
    );

    
  }
}
