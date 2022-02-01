import 'package:flutter/material.dart';
import 'package:pro_cris_flutter/utils/base_size.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'package:pro_cris_flutter/forms/sign_in_form.dart';

import 'package:pro_cris_flutter/components/atoms/button.dart';
import 'package:pro_cris_flutter/components/atoms/link.dart';
import 'package:pro_cris_flutter/components/molecules/pro_cris_banner.dart';
import 'package:pro_cris_flutter/components/molecules/form_text_field.dart';

import 'package:pro_cris_flutter/styles/pro_cris_colors.dart';

class SignIn extends StatelessWidget with SignInForm {
  SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProCrisBanner(),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                'Fazer Login',
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
                    label: 'Email',
                    formControlName: 'email',
                    size: BaseSize.lg,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FormTextField(
                    label: 'Senha',
                    formControlName: 'senha',
                    size: BaseSize.lg,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Button(
                    text: 'Entrar',
                    size: BaseSize.lg,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Link(
                    text: 'Criar Conta',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
