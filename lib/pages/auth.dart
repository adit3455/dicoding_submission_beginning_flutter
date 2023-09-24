import 'package:ecommerce_dbestech/pages/home_page.dart';
import 'package:ecommerce_dbestech/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  TextEditingController nameC = TextEditingController();
  TextEditingController passC = TextEditingController();

  bool obscure = true;

  @override
  void initState() {
    obscure = true;
    super.initState();
  }

  @override
  void dispose() {
    nameC.dispose();
    passC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auth Page"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/68312-login.gif",
                    height: 200.h,
                    width: 200.w,
                  ),
                ),
                const SizedBox(height: 40.0),
                const BigText(text: "Input Your Name"),
                const SizedBox(height: 5.0),
                TextFormField(
                    controller: nameC,
                    decoration: InputDecoration(
                        hintText: "Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0.h)))),
                const SizedBox(height: 20.0),
                const BigText(text: "Input Your Pass"),
                const SizedBox(height: 5.0),
                TextFormField(
                    controller: passC,
                    obscureText: obscure,
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 10.0.w),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscure = !obscure;
                                });
                              },
                              icon: obscure == true
                                  ? const Icon(Icons.remove_red_eye)
                                  : const Icon(Icons.lock)),
                        ),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0.h)))),
                const SizedBox(height: 30.0),
                Center(
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue.shade100,
                          elevation: 3,
                          side: BorderSide(color: Colors.grey.shade400),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 10.h)),
                      onPressed: () {
                        if (nameC.text.isEmpty) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("You must input your name"),
                            duration: Duration(seconds: 1),
                          ));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    HomePage(title: nameC.text),
                              ));
                        }
                      },
                      child: const Text("Login")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
