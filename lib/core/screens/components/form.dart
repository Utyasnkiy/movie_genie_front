import 'package:flutter/material.dart';
import 'package:movie_genie/assets/app_color.dart';
import 'package:movie_genie/assets/app_typography.dart';

class LoginForm extends StatelessWidget {
  const LoginForm(
      {super.key,
      required this.loginController,
      required this.passwordController,
      this.auth,
      this.toRegister,
      this.back});

  final TextEditingController loginController;
  final TextEditingController passwordController;
  final VoidCallback? auth;
  final VoidCallback? toRegister;
  final VoidCallback? back;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      padding: const EdgeInsets.only(left: 50, right: 50, top: 40, bottom: 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color.fromARGB(225, 47, 39, 37)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Авторизация",
            style: AppTypography.superBig,
          ),
          const SizedBox(
            height: 100,
          ),
          _FormatterTextField(
            controller: loginController,
            helperText: "Логин",
          ),
          const SizedBox(
            height: 30,
          ),
          _FormatterTextField(
            controller: passwordController,
            helperText: "Пароль",
          ),
          const SizedBox(
            height: 30,
          ),
          _FormattedFilledButton(onTap: auth, text: "Войти"),
          const SizedBox(
            height: 30,
          ),
          _FormattedTextButton(
            text: "Зарегистрироваться",
            onTap: toRegister,
          ),
          const SizedBox(
            height: 70,
          ),
          _FormattedFilledButton(
            text: "Назад",
            onTap: back,
          )
        ],
      ),
    );
  }
}

class _FormattedTextButton extends StatelessWidget {
  const _FormattedTextButton({super.key, this.onTap, required this.text});

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.underline,
            ),
      ),
    );
  }
}

class _FormattedFilledButton extends StatelessWidget {
  const _FormattedFilledButton({super.key, this.onTap, required this.text});

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: const Color(0xFF7E7CE1),
          elevation: 0,
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide.none,
          ),
        ),
        onPressed: onTap,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}

class _FormatterTextField extends StatelessWidget {
  const _FormatterTextField(
      {super.key,
      required this.controller,
      required this.helperText,
      this.height = 40});

  final TextEditingController controller;
  final String helperText;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          labelText: helperText,
          fillColor: Theme.of(context).colorScheme.background,
          labelStyle: AppTypography.helperText,
        ),
      ),
    );
  }
}

class RegisterForm extends StatelessWidget {
  const RegisterForm(
      {super.key,
      required this.loginController,
      required this.passwordController,
      this.register,
      this.toAuth,
      this.back,
      required this.emailController,
      required this.repeatPasswordController});

  final TextEditingController loginController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController repeatPasswordController;
  final VoidCallback? register;
  final VoidCallback? toAuth;
  final VoidCallback? back;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 40, bottom: 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color.fromARGB(225, 47, 39, 37)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Регистрация",
            style: AppTypography.superBig,
          ),
          const SizedBox(
            height: 100,
          ),
          _FormatterTextField(
            controller: emailController,
            helperText: "Почта",
          ),
          const SizedBox(
            height: 30,
          ),
          _FormatterTextField(
            controller: loginController,
            helperText: "Логин",
          ),
          const SizedBox(
            height: 30,
          ),
          _FormatterTextField(
            controller: passwordController,
            helperText: "Пароль",
          ),
          const SizedBox(
            height: 30,
          ),
          _FormatterTextField(
            controller: repeatPasswordController,
            helperText: "Повторите пароль",
          ),
          const SizedBox(
            height: 30,
          ),
          _FormattedFilledButton(onTap: register, text: "Войти"),
          const SizedBox(
            height: 30,
          ),
          _FormattedTextButton(
            text: "Зарегистрироваться",
            onTap: toAuth,
          ),
          const SizedBox(
            height: 70,
          ),
          _FormattedFilledButton(
            text: "Назад",
            onTap: back,
          )
        ],
      ),
    );
  }
}

class FilmForm extends StatelessWidget {
  const FilmForm(
      {super.key,
      required this.yearController,
      required this.nameController,
      required this.countryController,
      required this.directorController,
      required this.budgetController,
      required this.feesController,
      required this.plotController,
      this.register,
      this.toAuth,
      this.back});

  final TextEditingController yearController;
  final TextEditingController nameController;
  final TextEditingController countryController;
  final TextEditingController directorController;
  final TextEditingController budgetController;
  final TextEditingController feesController;
  final TextEditingController plotController;
  final VoidCallback? register;
  final VoidCallback? toAuth;
  final VoidCallback? back;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 40, bottom: 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color.fromARGB(225, 47, 39, 37)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Добавить фильм",
            style: AppTypography.superBig,
          ),
          const SizedBox(
            height: 100,
          ),
          _FormatterTextField(
            controller: nameController,
            helperText: "Название",
          ),
          const SizedBox(
            height: 30,
          ),
          _FormatterTextField(
            controller: yearController,
            helperText: "Год",
          ),
          const SizedBox(
            height: 30,
          ),
          _FormatterTextField(
            controller: countryController,
            helperText: "Пароль",
          ),
          const SizedBox(
            height: 30,
          ),
          _FormatterTextField(
            controller: directorController,
            helperText: "Режиссёр",
          ),
          const SizedBox(
            height: 30,
          ),
          _FormatterTextField(
            controller: budgetController,
            helperText: "Бюджет",
          ),
          const SizedBox(
            height: 30,
          ),
          _FormatterTextField(
            controller: feesController,
            helperText: "Сборы",
          ),
          const SizedBox(
            height: 30,
          ),
          _FormatterTextField(
            height: 150,
            controller: plotController,
            helperText: "Сюжет",
          ),
          const SizedBox(
            height: 30,
          ),
          _FormattedFilledButton(onTap: register, text: "Войти"),
          const SizedBox(
            height: 30,
          ),
          _FormattedTextButton(
            text: "Зарегистрироваться",
            onTap: toAuth,
          ),
          const SizedBox(
            height: 70,
          ),
          _FormattedFilledButton(
            text: "Назад",
            onTap: back,
          )
        ],
      ),
    );
  }
}
