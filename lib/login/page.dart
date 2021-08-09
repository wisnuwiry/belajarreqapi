import 'package:flutter/material.dart';
import 'package:latihanreqapi/list_user/page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            _FormSection(),
          ],
        ),
      ),
    );
  }
}

class _FormSection extends StatelessWidget {
  const _FormSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(hintText: 'Please Input Email...'),
        ),
        const SizedBox(
          height: 24,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Please Input Password',
          ),
        ),
        const SizedBox(height: 48),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ListUserPage(),
              ),
            );
          },
          child: Text('Submit'),
        ),
      ],
    );
  }
}
