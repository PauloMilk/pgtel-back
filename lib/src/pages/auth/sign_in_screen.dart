import 'package:flutter/material.dart';
import 'package:pgtel_app/src/config/custom_colors.dart';
import 'package:pgtel_app/src/constants/app_info.dart';
import 'package:pgtel_app/src/pages/auth/components/forgot_password_dialog.dart';
import 'package:pgtel_app/src/pages/page_routes/app_routes.dart';

import '../../commom_widgets/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static const appVersion = AppInfo.appVersion;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(4, 2, 138, 1),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 16),
                      child: const Text(
                        "ASSISTÊNCIA TÉCNICA",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(45),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const CustomTextField(
                        icon: Icons.email,
                        label: 'Email',
                      ),
                      const CustomTextField(
                        icon: Icons.lock,
                        label: 'Senha',
                        isSecret: true,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 6),
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromRGBO(4, 2, 138, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            print("Clicou no botão");
                            Navigator.of(context).pushReplacementNamed(Routes.BASE);
                          },
                          child: const Text("Entrar"),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) {
                                return ForgotPasswordDialog(email: "");
                              },
                            );
                          },
                          child: Text(
                            'Esqueceu sua senha?',
                            style: TextStyle(
                              color: CustomColors.customContrastColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "versão: $appVersion",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
