import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Created by minh.tran on 13/06/2021.

final loginControllerProvider =
    StateNotifierProvider.autoDispose<LoginController, LoginState>((ref) {
  ref.onDispose(() {
    print('notifier was disposed');
  });
  return LoginController(ref.read);
});

int count = 0;

class LoginController extends StateNotifier<LoginState> {
  LoginController(this._read) : super(LoginState.initial());

  final Reader _read;

  void login(String email, String password) async {
    /// loading always fire because this line.
    // state = state.copyWith(loginStatus: Status.LOADING, isAuthenticated: false);
    final response = await Future.delayed(Duration(seconds: 1));


    // final response =
    // await _read(authRepositoryProvider).doLogin(email, password);

    // doLogin fail and stop before update state.
    // if (response is AppException) {
    if (count % 2 == 0) {
      state = state.copyWith(
          loginStatus: Status.ERROR,
          error: response.toString(),
          isAuthenticated: false);
    } else {
      // } else {
      state =
          state.copyWith(loginStatus: Status.COMPLETED, isAuthenticated: true);
      // }
    }
  }
}

enum Status { INITIAL, LOADING, COMPLETED, ERROR }

class LoginState extends Equatable {
  final Status loginStatus;
  final String? error;
  final bool isAuthenticated;

  LoginState(
      {required this.loginStatus, this.error, required this.isAuthenticated});

  factory LoginState.initial() {
    return LoginState(loginStatus: Status.INITIAL, isAuthenticated: false);
  }

  LoginState copyWith({
    required Status loginStatus,
    String? error,
    required bool isAuthenticated,
  }) {
    return LoginState(
        loginStatus: loginStatus,
        error: error,
        isAuthenticated: isAuthenticated);
  }

  @override
  List<Object?> get props => [loginStatus, error, isAuthenticated];
}

class ProviderListenerIssue extends StatelessWidget {
  const ProviderListenerIssue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build called');
    return Scaffold(
      body: ProviderListener<LoginState>(
        provider: loginControllerProvider,
        onChange: (BuildContext context, value) {
          if (value.loginStatus == Status.COMPLETED) {
            print('redirect');
          }
          if (value.loginStatus == Status.ERROR) {
            print('error');
          }
          if (value.loginStatus == Status.LOADING) {
            print('loading');
          }
        },
        child: Container(
          child: Center(
              child: TextButton(
                  child: Text('click'),
                  onPressed: () {
                    count ++;
                    context
                        .read(loginControllerProvider.notifier)
                        .login('', '');
                  })),
        ),
      ),
    );
  }
}
