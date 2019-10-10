import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_database/app_config.dart';
import 'package:flutter_database/widgets/login_button.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginDialog extends StatefulWidget {
  @override
  LoginDialogState createState() => LoginDialogState();
}

class LoginDialogState extends State<StatefulWidget> {
  TextEditingController cntrlEmail;
  TextEditingController cntrlPass;
  @override
  void initState() {
    cntrlEmail = TextEditingController();
    cntrlPass = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final store = AppConfig.of(context).rootStore.databaseStore;
    return Observer(
      builder: (_) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 25),
                child: Text(
                  store.isSignup ? 'Sign up' : 'Sign in',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                controller: cntrlEmail,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
                onChanged: (t) => store.email = t,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                controller: cntrlPass,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                onChanged: (t) => store.password = t,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 40, 30, 5),
              child: InkWell(
                onTap: () {
                  store.mainButtonAction();

                  if (store.isSignup) {
                    cntrlEmail.clear();
                    cntrlPass.clear();
                    store.result = '';
                    store.query = '';
                    store.email = '';
                    store.password = '';
                  }
                },
                child: LoginButton(
                  text: store.isSignup ? 'Create Account' : 'Login',
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
