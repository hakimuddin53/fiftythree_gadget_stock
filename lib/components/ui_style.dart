import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UiStyle {
  static InputDecoration textFormDecoration(
    String hint,
    // Widget suffixIcon,
    BuildContext context, {
    bool underlineTransparent = false,
    bool needLabelText = true,
    bool readonly = false,
    int errorMaxLines = 1,
    bool filledColorChoice = false,
  }) {
    Color filledColor = readonly
        ? Theme.of(context).disabledColor
        : Theme.of(context).highlightColor;
    Color errorTextColor = Colors.red;
    return InputDecoration(
      labelText: needLabelText ? hint : null,
      errorStyle: new TextStyle(
        color: Colors.red,
      ),

      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: underlineTransparent ? Colors.transparent : filledColor,
        ),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: underlineTransparent ? Colors.transparent : filledColor,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: underlineTransparent ? Colors.transparent : filledColor,
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: underlineTransparent ? Colors.transparent : errorTextColor,
        ),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: underlineTransparent ? Colors.transparent : errorTextColor,
        ),
      ),
      fillColor: filledColor,
      filled: filledColorChoice,
      contentPadding: EdgeInsets.all(15.0),
      // hintStyle: TextStyle(// color: AppSettingsController.to.appThemeData.mainTextColor),
      hintText: hint,
      // suffixIcon: suffixIcon,
      errorMaxLines: errorMaxLines,
    );
  }

  static int simpleAutoCompleteSuggestionMaxCount() {
    return 10;
  }

  static double simpleAutoCompleteSuggestionMaxHeight() {
    return 200.0;
  }

  static Widget simpleAutoCompleteSuggestionList(
      ScrollController scrollController, List<Widget> items) {
    return items.length > 0
        ? Scrollbar(
            thickness: 10,
            radius: Radius.circular(10),
            isAlwaysShown: items.length > 5 ? true : false,
            controller: scrollController,
            child: Container(
                height: 200.0,
                child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: items))),
          )
        : SizedBox.shrink();
  }

  static TextInputFormatter labelInputFormat() {
    return FilteringTextInputFormatter.allow(labelInputFormatRegExp());
  }

  static RegExp labelInputFormatRegExp() {
    return RegExp('[ a-zA-Z0-9_-]');
  }
}
