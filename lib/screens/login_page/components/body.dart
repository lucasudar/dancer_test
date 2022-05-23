import 'package:dantser_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 4),
              child: Column(
                children: [
                  SvgPicture.asset(
                    './assets/logo/Dantser.svg',
                    color: kPrimaryColor,
                  ),
                  const SizedBox(height: kDefaultPadding),
                  const Text(
                    'Личный кабинет',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: kPrimaryColor,
                    ),
                  ),
                  const SizedBox(height: kDefaultPadding * 2),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                      'Для входа заполните обязательные поля Логин и Пароль.',
                      style: TextStyle(fontSize: 18, color: kTextColor),
                    ),
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: kPrimaryColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: kDefaultPadding,
                            horizontal: kDefaultPadding,
                          ),
                          hintText: 'Номер договора',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: kPrimaryColor),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: kDefaultPadding,
                            horizontal: kDefaultPadding,
                          ),
                          hintText: 'Пароль',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Container(
                      height: size.height * 0.15,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: -20,
                            left: 20,
                            child: Container(
                              width: size.width * 0.2,
                              height: size.height * 0.2,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xF8CCCBE2),
                                    Colors.red,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
