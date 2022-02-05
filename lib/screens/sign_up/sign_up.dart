import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'package:pro_cris_flutter/components/atoms/keyboard_dismiss.dart';
import 'package:pro_cris_flutter/components/atoms/button.dart';
import 'package:pro_cris_flutter/components/atoms/link.dart';
import 'package:pro_cris_flutter/components/molecules/form_text_field.dart';
import 'package:pro_cris_flutter/components/molecules/pro_cris_banner.dart';

import 'package:pro_cris_flutter/forms/sign_up_form.dart';
import 'package:pro_cris_flutter/styles/pro_cris_colors.dart';
import 'package:pro_cris_flutter/utils/base_size.dart';

class SignUp extends StatelessWidget with SignUpForm {
  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProCrisBanner(),
      body: KeyboardDismiss(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Criar Conta',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: ProCrisColors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ReactiveForm(
                formGroup: form,
                child: Column(
                  children: [
                    FormTextField(
                      label: 'Nome Completo',
                      formControlName: 'name',
                      size: BaseSize.lg,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FormTextField(
                      label: 'Email',
                      formControlName: 'email',
                      size: BaseSize.lg,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FormTextField(
                      label: 'Senha',
                      formControlName: 'password',
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      size: BaseSize.lg,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FormTextField(
                      label: 'Confirmar Senha',
                      formControlName: 'passwordConfirm',
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      size: BaseSize.lg,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Button(
                      text: 'Criar Conta',
                      size: BaseSize.lg,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Link(
                      text: 'Fazer login',
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
