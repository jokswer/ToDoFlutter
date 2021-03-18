// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthState on AuthStateBase, Store {
  final _$isAuthLoadingAtom = Atom(name: 'AuthStateBase.isAuthLoading');

  @override
  bool get isAuthLoading {
    _$isAuthLoadingAtom.reportRead();
    return super.isAuthLoading;
  }

  @override
  set isAuthLoading(bool value) {
    _$isAuthLoadingAtom.reportWrite(value, super.isAuthLoading, () {
      super.isAuthLoading = value;
    });
  }

  final _$isLoginLoadingAtom = Atom(name: 'AuthStateBase.isLoginLoading');

  @override
  bool get isLoginLoading {
    _$isLoginLoadingAtom.reportRead();
    return super.isLoginLoading;
  }

  @override
  set isLoginLoading(bool value) {
    _$isLoginLoadingAtom.reportWrite(value, super.isLoginLoading, () {
      super.isLoginLoading = value;
    });
  }

  final _$userAtom = Atom(name: 'AuthStateBase.user');

  @override
  User get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$authAsyncAction = AsyncAction('AuthStateBase.auth');

  @override
  Future<void> auth({String email, String password}) {
    return _$authAsyncAction
        .run(() => super.auth(email: email, password: password));
  }

  final _$loginAsyncAction = AsyncAction('AuthStateBase.login');

  @override
  Future<void> login({String email, String password}) {
    return _$loginAsyncAction
        .run(() => super.login(email: email, password: password));
  }

  @override
  String toString() {
    return '''
isAuthLoading: ${isAuthLoading},
isLoginLoading: ${isLoginLoading},
user: ${user}
    ''';
  }
}
