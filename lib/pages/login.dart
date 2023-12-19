import 'package:around_egypt/pages/homeView.dart';
import 'package:around_egypt/pages/helper/show_snack_bar.dart';
import 'package:around_egypt/pages/register.dart';
import 'package:around_egypt/widgets/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../widgets/custom_text_field.dart';

const kPrimaryColor = Color(0xFFdeaa34);

  String? email;
  String? password;

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);
  static String id = 'login page';
    
    GlobalKey<FormState> formKey = GlobalKey();
   bool isLoadjng = false;
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
            child: Column(
              children: [
                Spacer(
                  flex: 1,
                ),
                Image.asset(
                  'images/logo.png',
                  height: 199,
                ),
                Text(
                  'Around Egypt',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'pacifico',
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                Row(
                  children: [
                    Text(
                      'LOGIN',
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
                    email = data;
                  },
                  hintText: '   Email',
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
                SizedBox(
                  height: 18,
                ),
                CustomButton
                ( 
                   onTap: () async {
                
                if (formKey.currentState!.validate()) {
                  isLoadjng = true;
        try { 
           await loginUser();
              showSnackBar(context, 'sucess');
               Navigator.pushNamed(context, HomeView.id);
        }on FirebaseAuthException catch(ex) {
       if (ex.code == 'user-not-found') {
      showSnackBar(context,'user not found' );
                } else if (ex.code == 'wrong-password') {
            showSnackBar(context, 'wrong password');
                }
              
        } catch(ex)  
        { 
          print(ex);
      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('there was an error'),),);            
              
      
        }
        isLoadjng = false;
         //   showSnackBar(context, 'sucess');
        
      }else{
      
      }
                
                   },
                  
                   text: 'LOGIN'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'don\'t have an account ?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RegisterPage().id);
                      },
                      child: Text('  REGISTER',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffb54407),
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
                Spacer(
                  flex: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } 
  


  Future<void> loginUser() async {
       UserCredential user =
             await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email!, password: password!);
  }
}
