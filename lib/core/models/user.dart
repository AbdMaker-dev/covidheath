class User {
  String? nom;
  String? prenom;
  String tel;
  String? adresse;
  String? email;
  String password;

  User(
      {this.nom,
      this.prenom,
      required this.tel,
      this.adresse,
      this.email,
      required this.password});

   User? login() {
    for (var user in allUser) {
      if (user.tel.compareTo(tel) == 0 &&
          user.password.compareTo(password) == 0) {
        return user;
      }
    }
    return null;
  }

}

List<User> allUser = [
  User(
      nom: "Diop",
      prenom: "Alpha",
      tel: "775181818",
      adresse: "RIO",
      email: "ka@gmail.com",
      password: "12345678"),
  User(
      nom: "Ka",
      prenom: "Ibou",
      tel: "775181817",
      adresse: "KM",
      email: "alioune@gmail.com",
      password: "12345678"),
  User(
      nom: "Fall",
      prenom: "Nafi",
      tel: "775181518",
      adresse: "DK",
      email: "fall@gmail.com",
      password: "12345678"),
];
