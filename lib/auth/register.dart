import 'package:attendance/auth/login.dart';
import 'package:attendance/config/global_colors.dart';
import 'package:attendance/widget/social.dart';
import 'package:attendance/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController password2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: authThemeColor,
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const  EdgeInsets.only(top: 15),
                
              ),
              Center(
                child: Text(
                  'Create Account',
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
              customTextFeild(
                50.0,
                double.infinity,
                'School ID',
                idController,
                TextInputType.text,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextFeild(
                    50.0,
                    MediaQuery.of(context).size.width / 2 - 30,
                    'First name',
                    firstnameController,
                    TextInputType.text,
                  ),
                  customTextFeild(
                    50.0,
                    MediaQuery.of(context).size.width / 2 - 20,
                    'Last name',
                    lastnameController,
                    TextInputType.text,
                  ),
                ],
              ),
              customTextFeild(
                50.0,
                double.infinity,
                'Password',
                passwordController,
                TextInputType.visiblePassword,
              ),
              customTextFeild(
                50.0,
                double.infinity,
                'Re enter password',
                password2Controller,
                TextInputType.visiblePassword,
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(buttonColor),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const  Login()),
                ),
                child: Text(
                  'Create Account',
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
                  MaterialPageRoute(builder: (context) => Login()),
                ),
                child: Text(
                  'Already have account?',
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
                    'Continue with Google', Color(0XFF6E4C4B)),
              ),
              GestureDetector(
                onTap: () {},
                child: socialWidget(FontAwesomeIcons.facebook,
                    'Continue with Facebook', Colors.blue),
              ),
              GestureDetector(
                child: socialWidget(FontAwesomeIcons.twitter,
                    'Continue with Twitter', Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
