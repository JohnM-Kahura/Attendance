import 'package:attendance/auth/fingerprint.dart';
import 'package:attendance/config/global_colors.dart';
import 'package:attendance/widget/social.dart';
import 'package:attendance/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController=TextEditingController();
  TextEditingController idController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: authThemeColor,
      body: Container(
        margin: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const  EdgeInsets.only(top: 15),
                
              ),
              Center(
                child: Text(
                  'Log in',
                  style: GoogleFonts.montserrat(
                    color: textColorBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              customTextFeild(
                50.0,
                double.infinity,
                'Email Address',
                emailController,
                TextInputType.emailAddress,
              ),
              Center(
                child: Text(
                  'Or',
                  style: GoogleFonts.montserrat(
                    color: textColorBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              customTextFeild(
                50.0,
                double.infinity,
                'School ID',
                idController,
                TextInputType.text,
              ),
              customTextFeild(
                50.0,
                double.infinity,
                'Password',
                passwordController,
                TextInputType.visiblePassword,
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(buttonColor),
                ),
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Container()),
                ),
                child: Text(
                  'Log in',
                  style: GoogleFonts.montserrat(
                    color: textColorBlack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const  FingerPrint()),
                ),
                child: Text(
                  'Don\'t have account?',
                  style: GoogleFonts.montserrat(
                    color: textColorBlack,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(
                thickness: 0.5,
                indent: 10,
                endIndent: 10,
                color: Colors.black,
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: socialWidget(FontAwesomeIcons.google,
                    'Sign in with Google', Color(0XFF6E4C4B)),
              ),
              GestureDetector(
                onTap: () {},
                child: socialWidget(FontAwesomeIcons.facebook,
                    'Sign in with Facebook', Colors.blue),
              ),
              GestureDetector(
                child: socialWidget(FontAwesomeIcons.twitter,
                    'Sign in with Twitter', Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}