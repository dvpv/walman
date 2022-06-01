import 'package:flutter/material.dart';

ButtonStyle appBarButtonStyle({double borderRadius = 30}) => ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
