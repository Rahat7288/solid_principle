void main() {
  print('Single Responsibility Principle');
  /*
  we should not write any comment it will violated single responsibility principle
  ==============================
  Use a real-life example to illustrate the concept. Imagine a chef in a restaurant responsible for taking orders, 
  cooking, washing dishes, and managing inventory. This can be overwhelming and lead to mistakes. Instead,
   having separate chefs for each task (cooking, cleaning, orders) promotes focus and efficiency.

   single class or methods should have only one responsibility 
   class or methods have only reson to change or modify

  */

  UserData user = UserData('Rahat', 'my@mail.com', 'veryStrong');

  user.save();

  UserAthentication userAthentication = UserAthentication(user);

  userAthentication.authenticate();
}

class UserData {
  String? userName;
  String? userEmail;
  String? userPassword;

  UserData(
    this.userName,
    this.userEmail,
    this.userPassword,
  );

  void save() {
    print('user info saved');
    print(
        'User name: $userName \n User Emial:  $userEmail \n User Password: $userPassword');
  }
}

class UserAthentication {
  UserData? user;
  UserAthentication(this.user);

  void authenticate() {
    print('${user!.userName} is authenticted');
  }
}
