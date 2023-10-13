import 'package:flutter/material.dart';

import '../block/auth_cubit.dart';
import '../color/colors.dart';
import '../components/general_text_field.dart';
import 'login_screen.dart';

class RegScreen extends StatelessWidget {

   final TextEditingController nameController=TextEditingController();
   final TextEditingController emailController=TextEditingController();
   final TextEditingController phoneController=TextEditingController();
   final TextEditingController genderController=TextEditingController();
   final TextEditingController passwordController=TextEditingController();
   final TextEditingController passwordconfirmationController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics:const  BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const   Padding(
              padding:  EdgeInsets.all(8.0),
              child: Align(

                alignment: Alignment.centerLeft,
                child:  Text(
                  'Welcome\nRegister Your Account now !',
                  style: TextStyle(
                    color: AppColors.kMainColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const   Padding(

              padding: const EdgeInsets.only(right: 70),
              child: Divider(
                color: Colors.black,
                height: 2,
                thickness: 3,
              ),
            ),
            Image.network(
              'https://img.freepik.com/free-photo/fun-3d-cartoon-illustration-indian-doctor_183364-114483.jpg',
              width: 150,
            ),
            GeneralTextField(
              hint: 'Enter Your Name',
              textEditingController: nameController,
            ),
            GeneralTextField(
                textEditingController: emailController,
                hint: 'Enter Your Email'),
            GeneralTextField(
                textEditingController: phoneController,
                hint: 'Enter Your Phone'),
            GeneralTextField(
                textEditingController: genderController,
                hint: 'Enter Your gender'),
            GeneralTextField(
                textEditingController: passwordController,
                hint: 'Enter Your Password'),
            GeneralTextField(
                textEditingController: passwordconfirmationController,
                hint: 'Enter Your password confirmation'),

            const   SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    AuthCubit.get(context).registerUser( nameController.text,emailController.text,int.parse(phoneController.text),
                        int.parse(genderController.text),passwordController.text,passwordconfirmationController.text);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.kMainColor
                  ),
                  child:  Padding(
                    padding: const  EdgeInsets.all(12),
                    child: Text(
                      'Register'.toUpperCase(),
                      style:const  TextStyle(fontSize: 20),
                    ),
                  )),
            ),
            // if(state is AuthCubit)
            //   const   Padding(
            //     padding:  EdgeInsets.all(8.0),
            //     child:   LinearProgressIndicator(
            //       color: AppColors.kMainColor,
            //     ),
            //   ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already Have Account?'),
                TextButton(onPressed: (){
                  // AppNavigator.navigateToNewScreen(context, LoginScreen(), false);
                }, child: const  Text(
                  'Login now !',
                  style: TextStyle(
                      color: AppColors.kMainColor
                  ),

                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
