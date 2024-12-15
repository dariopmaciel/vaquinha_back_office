import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

mixin Messages<T extends StatefulWidget> on State<T> {
  void _showSnackBar(AwesomeSnackbarContent content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: content,
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        padding: EdgeInsets.only(top: 72),
        backgroundColor: Colors.transparent,
      ),
    );
  }

  void showError(String message) {
    _showSnackBar(
      AwesomeSnackbarContent(
        title: 'ERRO',
        message: message,
        contentType: ContentType.failure,
      ),
    );
  }

  void showWarning(String message) {
    _showSnackBar(
      AwesomeSnackbarContent(
        title: 'ATENÇÃO',
        message: message,
        contentType: ContentType.warning,
      ),
    );
  }

  void showInfo(String message) {
    _showSnackBar(
      AwesomeSnackbarContent(
        title: 'INFO',
        message: message,
        contentType: ContentType.help,
      ),
    );
  }

  void showSucess(String message) {
    _showSnackBar(
      AwesomeSnackbarContent(
        title: 'SUCESSO',
        message: message,
        contentType: ContentType.success,
      ),
    );
  }
}
