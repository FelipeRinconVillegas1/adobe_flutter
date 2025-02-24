enum InputTypeDocumentNumber { input1, input2, input3 }

const String codeCed = "7615";
const String codePassport = "7621";

RegExp regExpInput1 = RegExp(r'(PE|E|N|AV|10|11|12|13|[1-9]|1AV|[1-9]PI|10PI)');
RegExp regExpInput2 = RegExp(r'(\d{1,4})');
RegExp regExpInput3 = RegExp(r'(\d{1,6})');