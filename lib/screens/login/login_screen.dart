import 'package:flutter/material.dart';
import 'package:xlo_mobx/shared/theme/app_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: AppTheme.sizes.zero),
      body: FractionallySizedBox(
        heightFactor: 0.88,
        child: Container(
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
                    Text('Welcome back', style: AppTheme.textStyles.title),
                    SizedBox(
                      height: AppTheme.sizes.large,
                    ),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(label: Text('E-mail')),
                    ),
                    SizedBox(
                      height: AppTheme.sizes.medium,
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(label: Text('Password')),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                            EdgeInsets.all(AppTheme.sizes.zero),
                          )),
                          onPressed: () {},
                          child: const Text('Recovery password'),
                        ),
                      ],
                    ),
                    SizedBox(height: AppTheme.sizes.large),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: (OutlinedButton.styleFrom(
                            shape: const StadiumBorder())),
                        onPressed: () {},
                        child: const Text('LOGIN'),
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
                          Text('Don\'t have an account? ',
                              style: AppTheme.textStyles.text),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, '/signup');
                            },
                            child: Text('Sign up',
                                style: AppTheme.textStyles.textLink),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
