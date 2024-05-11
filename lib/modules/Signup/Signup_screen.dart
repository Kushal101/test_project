import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/styles/size_config.dart';
import 'package:test_project/styles/styleKit.dart';
import 'package:test_project/utils/constants.dart';
import 'package:test_project/utils/size_boxes.dart';
import 'package:test_project/widgets/custom_button.dart';
import 'package:test_project/widgets/customtextfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isPasswordObscured = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordObscured = !_isPasswordObscured;
    });
  }

  void _signup() {
    if (_formKey.currentState!.validate()) {
      // Perform signup logic here, e.g., send signup request to server
      String name = _nameController.text;
      String email = _emailController.text;
      String password = _passwordController.text;
      print(name+email+password);
      // Perform signup action
      print('Signing up...');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal:SizeConfig.screenWidth*0.08,),
              height: SizeConfig.screenHeight * 0.15,
              width: SizeConfig.screenWidth,
              color: $styles.colors.hexF8615A,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppConstants.shien,
                  style: $styles.text.avenir400_25hexF3F1ED_34,
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -20),
              child: Container(
                height: SizeConfig.screenHeight * 0.4,
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                  color: $styles.colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  image: const DecorationImage(
                    image: AssetImage(AppConstants.signupImage),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth * 0.08,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBoxHeight32,
                      Text(
                        AppConstants.signup,
                        style: $styles.text.quickSand500_20hexF8615A_25,
                      ),
                      SizedBoxHeight20,
                      Text(
                        AppConstants.welcome,
                        style: $styles.text.quickSand700_14black_17,
                      ),
                      Text(
                        AppConstants.createNewAccount,
                        style: $styles.text.quickSand700_22black_27,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -30),
              child: Container(
                padding: EdgeInsets.only(
                  left: SizeConfig.screenWidth * 0.08,
                  right: SizeConfig.screenWidth * 0.08,
                ),
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                  color: $styles.colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, -3),
                    ),
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBoxHeight24,
                      Row(
                        children: [
                          Text(
                            AppConstants.pleaseSignup,
                            style:
                            $styles.text.quickSand500_18hex343434_22,
                          ),
                          Spacer(),
                          Text(
                            AppConstants.Signin,
                            style:
                            $styles.text.quickSand700_14hexF8615A_17,
                          ),
                        ],
                      ),
                      SizedBoxHeight24,
                      CustomTextField1(
                        labelText: AppConstants.fullName,
                        controller: _nameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      SizedBoxHeight18,
                      CustomTextField1(
                        labelText: AppConstants.emailAddress,
                        controller: _emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!RegExp(
                              r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      SizedBoxHeight18,
                      CustomTextField1(
                        labelText: AppConstants.password,
                        controller: _passwordController,
                        obscureText: _isPasswordObscured,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a password';
                          }
                          if (!RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                              .hasMatch(value)) {
                            return 'Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one digit, and one special character';
                          }
                          return null;
                        },
                        suffixIcon: IconButton(
                          icon: Icon(_isPasswordObscured
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: _togglePasswordVisibility,
                        ),
                      ),
                      SizedBoxHeight16,
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text("Terms and Conditions",style: $styles.text.quickSand700_14hexF8615A_17,),),
                      SizedBoxHeight16,
                    ],
                  ),

                ),
              ),
            ),



          ],
        ),
      ),
      bottomNavigationBar:  Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: $styles.colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: CustomButton(

          buttonHeight: SizeConfig.screenHeight * 0.06,
          text: 'Sign up',
          textStyle: $styles.text.quickSand700_14white_17,
          buttonWidth: SizeConfig.screenWidth,
          buttonRadius: 8,
          verticalPadding: EdgeInsets.zero,
          buttonColor: $styles.colors.hexF8615A,
          onTap: _signup,
        ),
      ),
    );
  }
}
