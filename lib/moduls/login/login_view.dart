import 'package:flutter/material.dart';

import '../../page_routs_name.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var formKey = GlobalKey<FormState>();
  bool isObscure = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/SIGN IN – 1.png"),
          fit: BoxFit.cover,
        ),
        color: Theme.of(context).primaryColor,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "Login",
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: mediaQuery.size.height * .2,
                ),
                Text(
                  'Welcome back!',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                TextFormField(
                  controller: emailController,
                  cursorColor: Theme.of(context).colorScheme.secondary,
                  cursorHeight: 18,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontWeight: FontWeight.w400, fontSize: 16),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "please enter your email address";
                    }
                    var regEx = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$*'/=?_%+-^-'{|}~]+[@[a-zA-Z0-9]+\.[a-zA-Z]+",
                    );
                    if (!regEx.hasMatch(value)) {
                      return "invalid email";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: Text(
                        'E-mail',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      errorStyle: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: Colors.red, fontSize: 14),
                      hintText: "Enter your email address",
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 1.5,
                        ),
                      ),
                      suffixIcon: Icon(Icons.email)),
                ),
                TextFormField(
                  obscureText: isObscure,
                  obscuringCharacter: '*',
                  controller: passwordController,
                  cursorColor: Theme.of(context).colorScheme.secondary,
                  cursorHeight: 18,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontWeight: FontWeight.w400, fontSize: 16),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "please enter your password";
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text(
                      'Password',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    errorStyle: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: Colors.red, fontSize: 14),
                    hintText: "Enter your password",
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 1.5,
                      ),
                    ),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        child: isObscure
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off)),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forget Password ?',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 65,
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushReplacementNamed(
                          context, PageRoutesName.layout);
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Login",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: Colors.white, fontSize: 17),
                      ),
                      const Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, PageRoutesName.registration);
                  },
                  child: Text(
                    'Or Create My Account  ',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
