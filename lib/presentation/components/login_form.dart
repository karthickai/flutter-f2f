import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_f2f/core/themes/palette.dart';
import 'package:flutter_f2f/logic/bloc/login/login_bloc.dart';

class LoginForm extends StatefulWidget {
  final paddingTopForm,
      fontSizeTextField,
      fontSizeTextFormField,
      spaceBetweenFields,
      iconFormSize;
  final spaceBetweenFieldAndButton,
      widthButton,
      fontSizeButton,
      fontSizeForgotPassword,
      fontSizeSnackBar,
      errorFormMessage;

  const LoginForm(
      {Key key,
      this.paddingTopForm,
      this.fontSizeTextField,
      this.fontSizeTextFormField,
      this.spaceBetweenFields,
      this.iconFormSize,
      this.spaceBetweenFieldAndButton,
      this.widthButton,
      this.fontSizeButton,
      this.fontSizeForgotPassword,
      this.fontSizeSnackBar,
      this.errorFormMessage})
      : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  _LoginFormState();

  @override
  Widget build(BuildContext context) {
    final double widthSize = MediaQuery.of(context).size.width;
    final double heightSize = MediaQuery.of(context).size.height;

    _onLoginButtonPressed() {
      BlocProvider.of<LoginBloc>(context).add(LoginButtonPressed(
        email: _usernameController.text,
        password: _passwordController.text,
      ));
    }

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          print("Failure to login");
          // Scaffold.of(context).showSnackBar(SnackBar(
          //   content: Text('${state.error}'),
          //   backgroundColor: Colors.red,
          // ));
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
        return Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.only(
                left: widthSize * 0.05,
                right: widthSize * 0.05,
                top: heightSize * widget.paddingTopForm),
            child: Column(
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Email',
                        style: TextStyle(
                            fontSize: widthSize * widget.fontSizeTextField,
                            fontFamily: 'Poppins',
                            color: Colors.white))),
                TextFormField(
                    controller: _usernameController,
                    // ignore: missing_return
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Email is empty!';
                      }
                    },
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2)),
                      labelStyle: TextStyle(color: Colors.white),
                      errorStyle: TextStyle(
                          color: Colors.white,
                          fontSize: widthSize * widget.errorFormMessage),
                      prefixIcon: Icon(
                        Icons.person,
                        size: widthSize * widget.iconFormSize,
                        color: Colors.white,
                      ),
                    ),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: widget.fontSizeTextFormField)),
                SizedBox(height: heightSize * widget.spaceBetweenFields),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Password',
                        style: TextStyle(
                            fontSize: widthSize * widget.fontSizeTextField,
                            fontFamily: 'Poppins',
                            color: Colors.white))),
                TextFormField(
                    controller: _passwordController,
                    // ignore: missing_return
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter valid password!';
                      }
                    },
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2)),
                      labelStyle: TextStyle(color: Colors.white),
                      errorStyle: TextStyle(
                          color: Colors.white,
                          fontSize: widthSize * widget.errorFormMessage),
                      prefixIcon: Icon(
                        Icons.lock,
                        size: widthSize * widget.iconFormSize,
                        color: Colors.white,
                      ),
                    ),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: widget.fontSizeTextFormField)),
                SizedBox(
                    height: heightSize * widget.spaceBetweenFieldAndButton),
                FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    padding: EdgeInsets.fromLTRB(widget.widthButton * 0.5, 15,
                        widget.widthButton * 0.5, 15),
                    color: Palette.buttonColorFocus,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        if (state is! LoginLoading) {
                          _onLoginButtonPressed();
                        }
                      }
                    },
                    child: Text('LOGIN',
                        style: TextStyle(
                            fontSize: widthSize * widget.fontSizeButton,
                            fontFamily: 'Poppins',
                            color: Colors.white))),
                SizedBox(height: heightSize * 0.02),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/forgot_password');
                    print('login');
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                        fontSize:
                            widthSize * widget.fontSizeForgotPassword * 1.2,
                        fontFamily: 'Poppins',
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
