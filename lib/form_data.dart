class FormData {
  String name = "Nombre Colaborador";
  String title = "Líder Técnico";
  String division = "Gerencia División Operaciones y Tecnología";
  String email = "ncolaborador@transbank.cl";
  String phone = "+1 234 567 8910";
  String address = "Huérfanos 770 piso 10 Santiago, Chile";

  static final FormData _singleton = FormData._internal();

  factory FormData() {
    return _singleton;
  }

  FormData._internal();

}