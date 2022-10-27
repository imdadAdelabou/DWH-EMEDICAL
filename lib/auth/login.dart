import 'package:emedical/auth/sign_up.dart';
import 'package:emedical/components/custom_button.dart';
import 'package:emedical/components/custom_textformfield.dart';
import 'package:emedical/helpers/constant.dart';
import "package:flutter/material.dart";

class Login extends StatelessWidget {
  static String routeName = "/login";
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 30.0),
                  Text(
                    'Connexion',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        fontFamily: montserratFamily),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomTextFormField(
                    htinText: 'E-mail',
                  ),
                  SizedBox(height: 30.0),
                  CustomTextFormField(
                    htinText: 'Mot de passe',
                    inputType: InputType.password,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Mots de passe oublié',
                        style: TextStyle(
                          fontFamily: montserratFamily,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    buttonContent: "Connexion",
                    action: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("OU"),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    buttonContent: "Connexion avec Google",
                    action: () {},
                  )
                ],
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(SignUp.routeName);
                  },
                  child: Text('Pas de compte? Inscrivez-vous.'))
            ],
          ),
        ),
      ),
    );
  }
}
