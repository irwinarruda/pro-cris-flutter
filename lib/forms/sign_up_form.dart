import 'package:reactive_forms/reactive_forms.dart';

abstract class SignUpForm {
  final form = FormGroup({
    'name': FormControl<String>(value: ''),
    'email': FormControl<String>(value: ''),
    'password': FormControl<String>(value: ''),
    'passwordConfirm': FormControl<String>(value: ''),
  });
}
