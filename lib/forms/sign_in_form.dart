import 'package:reactive_forms/reactive_forms.dart';

abstract class SignInForm {
  final form = FormGroup({
    'email': FormControl<String>(value: ''),
    'password': FormControl<String>(value: ''),
  });
}
