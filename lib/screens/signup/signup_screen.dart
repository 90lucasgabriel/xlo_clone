import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xlo_mobx/shared/theme/app_theme.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final isKeyboard = MediaQuery.of(context).viewInsets.bottom == 0;

    return Scaffold(
      appBar: AppBar(elevation: AppTheme.sizes.zero),
      body: Container(
        // margin: EdgeInsets.only(bottom: isKeyboard ? 60 : 0),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: AppTheme.sizes.medium),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppTheme.sizes.normal),
            ),
            elevation: AppTheme.sizes.normal,
            child: Container(
              padding: EdgeInsets.all(AppTheme.sizes.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Create an account', style: AppTheme.textStyles.title),
                  SizedBox(
                    height: AppTheme.sizes.large,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      label: Text('Name'),
                      isDense: true,
                    ),
                  ),
                  SizedBox(height: AppTheme.sizes.large),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      label: Text('E-mail'),
                      hintText: 'email@domain.com',
                      isDense: true,
                    ),
                  ),
                  SizedBox(height: AppTheme.sizes.large),
                  TextField(
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      TelefoneInputFormatter(),
                    ],
                    decoration: const InputDecoration(
                      label: Text('Phone number'),
                      hintText: '(99) 91234-1234',
                      isDense: true,
                    ),
                  ),
                  SizedBox(height: AppTheme.sizes.large),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text('Password'),
                      isDense: true,
                    ),
                  ),
                  SizedBox(height: AppTheme.sizes.large),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text('Password Confirmation'),
                      isDense: true,
                    ),
                  ),
                  SizedBox(height: AppTheme.sizes.large),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: (OutlinedButton.styleFrom(
                          shape: const StadiumBorder())),
                      onPressed: () {},
                      child: const Text('SIGN UP'),
                    ),
                  ),
                  Divider(
                    color: AppTheme.colors.grayLight,
                    height: AppTheme.sizes.xLarge,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text('Already have an account? ',
                            style: AppTheme.textStyles.text),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/login');
                          },
                          child: Text('Login',
                              style: AppTheme.textStyles.textLink),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
