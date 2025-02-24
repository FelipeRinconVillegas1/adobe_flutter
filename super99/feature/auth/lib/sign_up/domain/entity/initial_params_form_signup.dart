enum TypeOfData { email, phone }

class InitialParamsFormSignUp {
  InitialParamsFormSignUp({
    required this.typeOfData,
    required this.data,
  });

  final TypeOfData typeOfData;
  final String data;
}
