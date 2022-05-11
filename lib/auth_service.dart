import 'dart:async';

class AuthService {
  final StreamController<Account?> _events = StreamController.broadcast();

  Account? currentAccount;

  Stream<Account?> get accountEvents => _events.stream;

  void login() {
    currentAccount = Account("bigted@abc.com.au");
    _events.add(currentAccount);
  }

  Future<void> logout() async {
    currentAccount = null;
    _events.add(currentAccount);
  }
}

class Account {
  final String email;

  Account(this.email);
}
