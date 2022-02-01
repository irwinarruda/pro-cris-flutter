import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'package:pro_cris_flutter/styles/pro_cris_colors.dart';
import 'package:pro_cris_flutter/utils/base_size.dart';
import 'package:pro_cris_flutter/styles/text_field_styles.dart';

// ignore: must_be_immutable
class FormTextField<T> extends StatelessWidget {
  FormTextField({
    Key? key,
    this.label = '',
    this.size = BaseSize.md,
    required this.formControlName,
    this.validationMessages,
    this.valueAccessor,
    this.showErrors,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.strutStyle,
    this.textAlignVertical,
    this.autofocus = false,
    this.readOnly = false,
    this.toolbarOptions,
    this.showCursor,
    this.obscureText = false,
    this.obscuringCharacter = '•',
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLengthEnforcement,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.onTap,
    this.onEditingComplete,
    this.inputFormatters,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.enableInteractiveSelection = true,
    this.buildCounter,
    this.scrollPhysics,
    this.onSubmitted,
    this.focusNode,
    this.autofillHints,
    this.mouseCursor,
    this.onAppPrivateCommand,
    this.restorationId,
    this.scrollController,
    this.selectionControls,
    this.controller,
    this.enableIMEPersonalizedLearning = true,
    this.direction = Axis.vertical,
    this.mainAxisSize = MainAxisSize.max,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
  }) : super(key: key) {
    fieldStyles = TextFieldStyles.getStyles(size!);
  }

  late TextFieldStyles fieldStyles;

  final String? label;
  final BaseSize? size;
  final Axis direction;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final TextBaseline? textBaseline;

  final String formControlName;
  final ValidationMessagesFunction<T>? validationMessages;
  final ControlValueAccessor<T, String>? valueAccessor;
  final ShowErrorsFunction? showErrors;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final StrutStyle? strutStyle;
  final TextAlign textAlign = TextAlign.start;
  final TextAlignVertical? textAlignVertical;
  final bool autofocus;
  final bool readOnly;
  final ToolbarOptions? toolbarOptions;
  final bool? showCursor;
  final bool obscureText;
  final String obscuringCharacter;
  final bool autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  final GestureTapCallback? onTap;
  final VoidCallback? onEditingComplete;
  final List<TextInputFormatter>? inputFormatters;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool enableInteractiveSelection;
  final InputCounterWidgetBuilder? buildCounter;
  final ScrollPhysics? scrollPhysics;
  final VoidCallback? onSubmitted;
  final FocusNode? focusNode;
  final Iterable<String>? autofillHints;
  final MouseCursor? mouseCursor;
  final AppPrivateCommandCallback? onAppPrivateCommand;
  final String? restorationId;
  final ScrollController? scrollController;
  final TextSelectionControls? selectionControls;
  final TextEditingController? controller;
  final bool enableIMEPersonalizedLearning;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: [
        Text(
          '$label',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: fieldStyles.labelFontSize,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        ReactiveTextField(
          formControlName: formControlName,
          validationMessages: validationMessages,
          valueAccessor: valueAccessor,
          showErrors: showErrors,
          keyboardType: keyboardType,
          textCapitalization: textCapitalization,
          textInputAction: textInputAction,
          strutStyle: strutStyle,
          textDirection: textDirection,
          textAlign: textAlign,
          textAlignVertical: textAlignVertical,
          autofocus: autofocus,
          readOnly: readOnly,
          toolbarOptions: toolbarOptions,
          showCursor: showCursor,
          obscureText: obscureText,
          obscuringCharacter: obscuringCharacter,
          autocorrect: autocorrect,
          smartDashesType: smartDashesType,
          smartQuotesType: smartQuotesType,
          enableSuggestions: enableSuggestions,
          maxLengthEnforcement: maxLengthEnforcement,
          maxLines: maxLines,
          minLines: minLines,
          expands: expands,
          maxLength: maxLength,
          onTap: onTap,
          onEditingComplete: onEditingComplete,
          inputFormatters: inputFormatters,
          cursorWidth: cursorWidth,
          cursorHeight: cursorHeight,
          cursorRadius: cursorRadius,
          cursorColor: cursorColor,
          keyboardAppearance: keyboardAppearance,
          scrollPadding: scrollPadding,
          enableInteractiveSelection: enableInteractiveSelection,
          buildCounter: buildCounter,
          scrollPhysics: scrollPhysics,
          onSubmitted: onSubmitted,
          focusNode: focusNode,
          autofillHints: autofillHints,
          mouseCursor: mouseCursor,
          onAppPrivateCommand: onAppPrivateCommand,
          restorationId: restorationId,
          scrollController: scrollController,
          selectionControls: selectionControls,
          controller: controller,
          enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
          style: TextStyle(fontSize: fieldStyles.fontSize),
          decoration: InputDecoration(
            constraints: BoxConstraints(maxHeight: fieldStyles.height),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            contentPadding: fieldStyles.padding,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: ProCrisColors.gold,
                style: BorderStyle.solid,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: ProCrisColors.gray,
                style: BorderStyle.solid,
              ),
            ),
          ),
        )
      ],
    );
  }
}
