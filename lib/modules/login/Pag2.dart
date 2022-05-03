// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, override_on_non_overriding_member, avoid_print
import 'package:blingo/shared/componets/components.dart';
import 'package:flutter/material.dart';
class Login_pag extends StatefulWidget {
  const Login_pag({Key? key}) : super(key: key);
  @override
  State<Login_pag> createState() =>_Login_pagState();
}
    class _Login_pagState extends State<Login_pag> {
    @override
    var email_controller=TextEditingController();
    var password_controller=TextEditingController();
    var Form_Login =GlobalKey<FormState>();
    bool ispass=true;
    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
    body:Center(
    child: SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Form(
    key:Form_Login,
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
    Text_Form_Field(
    controll:email_controller,
    keyboardType:TextInputType.text,
    prefix:Icons.account_circle,

    ),
    const SizedBox(height:20),
    TextFormField(
    controller:password_controller,
    onFieldSubmitted:(String value){
    print(value);
    },
    validator:(value){
    if(value!.isEmpty){
    return'password is not be empty';
    }
    return null;
    },
    decoration: InputDecoration(
    labelText:'Password',
    prefixIcon:const Icon(Icons.lock),
    suffixIcon:IconButton(icon:ispass ? const Icon(Icons.visibility) :const Icon
        (Icons.visibility_off),
            onPressed:()
            {
            setState(() {
              ispass=!ispass;

            });
            }
            ),
    border:const OutlineInputBorder(),
    ),
    style:const TextStyle(
    color:Colors.black,
    fontFamily:'cairo',
    fontSize: 24,
    ),
    keyboardType:TextInputType.visiblePassword,
    obscureText:ispass,
    ),
    const SizedBox(height:29),

    //By_Reusable components

    De_Button(
    function: (){
    if(Form_Login.currentState!.validate()){
    print(email_controller.text);
    print(password_controller.text);
    }

    },
    text:'LOGIN',
    BorderRadiuss:1,
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
    ),
    );

    }
    }

