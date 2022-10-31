class User {
  late final String _email;

  User(this._email);
}

class AdminUser extends User with GetEmail {
  AdminUser(super.email);
}

class GeneralUser extends User {
  GeneralUser(super.email);
}

mixin GetEmail on User {
  @override
  String get _email => super._email.substring(super._email.indexOf("@") + 1);
}

class UserManager<T extends User> {
  List<T> _listUser = [];

  void addNewUser(T user) {
    _listUser.add(user);
  }

  void deleteUser(T user) {
    _listUser.remove(user);
  }

  List<String> getEmailAllUser() {
    List<String> emailAllUser = [];
    for (User user in _listUser) {
      emailAllUser.add(user._email);
    }
    return emailAllUser;
  }
}
