import 'package:around_egypt/pages/homeView.dart';
import 'package:flutter/material.dart';
import 'package:around_egypt/pages/helper/show_snack_bar.dart';
import 'package:around_egypt/widgets/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
///import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn_platform_interface.dart';
import '../widgets/custom_text_field.dart';


const kPrimaryColor = Color(0xFFdeaa34);

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  String id = 'registerPage';

  String? email;
  String? password;
  String? confirm;
  String? phone;
  String? name;
  bool isLoadjng = false;

     GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoadjng,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                SizedBox(
                  height: 60,
                ),
                Image.asset(
                  'images/logo.png',
                  height: 199,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Around Egypt',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'pacifico',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 75,
                ),
                Row(
                  children: [
                    Text(
                      'REGISTER',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                CustomFormTextField(
                   onChanged: (data){
                  name = data;
                  },
                  hintText: '   Name',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                  onChanged: (data){
                  email = data;
                  },
                  hintText: '   Email',
            
                 ),
                SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                  onChanged: (data){
                    phone = data;
                  },
                  hintText: '  Phone ',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                   onChanged: (data){
                  password = data;
                  },
                  hintText: '   Password',
                ),
                //  SizedBox(
                //   height: 10,
                // ),
                // CustomTextField(
                //    onChanged: (data){
                //   confirm = data;
                //   },
                //   hintText: '   Confirm Password',
                // ),
                SizedBox(
                  height: 18,
                ),
                CustomButton(
                   onTap: () async {
                
                if (formKey.currentState!.validate()) {
                  isLoadjng = true;
        try { 
           await registerUser();
              showSnackBar(context, 'sucess');
              Navigator.pushNamed(context, HomeView.id);
        }on FirebaseAuthException catch(ex) {
       if (ex.code == 'weak-password') {
      showSnackBar(context,'weak password' );
                } else if (ex.code == 'email-already-in-use') {
            showSnackBar(context, 'email already exists');
                }
              
        } catch(ex)  
        {
      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('there was an error'),),);            
              
      
        }
        isLoadjng = false;
// showSnackBar(context, 'sucess');
        
      }else{
      
      }
                
                   },
            
                  text: 'REGISTER'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'already have an account? ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(' LOGIN',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffb54407),
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  
  Future<void> registerUser() async {
       UserCredential user =
             await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email!, password: password!);
  }

}
