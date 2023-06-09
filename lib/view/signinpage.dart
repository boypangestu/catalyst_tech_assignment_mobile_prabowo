import 'package:flutter/material.dart';
import 'package:technical_test_prabowo/style.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool _rememberMe = false;
  bool _showPassword = false;
  TextEditingController _passwordController = TextEditingController();
  void _toggleRememberMe(bool value) {
    setState(() {
      _rememberMe = value;
    });
  }

  void _toggleShowPassword() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: colorWhite),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Masuk",
                      style: boldTextOrange.copyWith(fontSize: 18),
                    ),
                    Text(
                      "Daftar",
                      style: boldTextOrange.copyWith(
                          fontSize: 18, color: colorWhite),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14 * 2,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: colorOrange),
                    fillColor: colorDark,
                    filled: true,
                    labelText: 'Email/No. Handphone',
                    focusColor: colorOrange,
                    suffixIconColor: colorOrange,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: colorOrange),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: colorOrange),
                    fillColor: colorDark,
                    filled: true,
                    labelText: 'Password',
                    focusColor: colorOrange,
                    suffixIconColor: colorOrange,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: colorOrange),
                    ),
                    hoverColor: colorOrange,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _showPassword ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        _toggleShowPassword();
                      },
                    ),
                  ),
                  controller: _passwordController,
                  obscureText: !_showPassword,
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (value) {
                        _toggleRememberMe(value!);
                      },
                    ),
                    Text('Remember Me'),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: colorOrange,
                      foregroundColor: colorOrange),
                  onPressed: () {},
                  child: Text(
                    "MASUK",
                    style: generalTextBlack,
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.white70,
                        thickness: 1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 7),
                      child: Text(
                        "Atau Masuk dengan".toUpperCase(),
                        style: generalTextWhite.copyWith(fontSize: 12),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.white70,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "FACEBOOK",
                          style: generalTextWhite,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: colorWhite,
                            foregroundColor: colorOrange),
                        onPressed: () {},
                        child: Text(
                          "GOOGLE",
                          style: generalTextBlack,
                        ),
                        // style: ButtonStyle(backgroundColor: colorWhite),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14 * 2,
                ),
                Text(
                  "Dengan mendaftar atau masuk, kamu menyetujui",
                  style: generalTextWhite,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Syarat dan Ketentuan ",
                      style: generalTextWhite.copyWith(color: colorOrange),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "dan",
                      style: generalTextWhite,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Kebijakan Privasi",
                      style: generalTextWhite.copyWith(color: colorOrange),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 14 * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum punya akun?",
                      style: generalTextWhite,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Daftar aja!",
                      style: generalTextWhite.copyWith(color: colorOrange),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 14 * 2,
                ),
                Text(
                  "Lupa Password?",
                  style: generalTextWhite.copyWith(color: colorOrange),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
