class USSDCode {
  final int id;
  final String ussdCode;
  final String ussdDesc;

  const USSDCode({
    required this.id,
    required this.ussdCode,
    required this.ussdDesc,
  });
}

List<USSDCode> ussdList = [
  const USSDCode(
    id: 1,
    ussdCode: "#132#",
    ussdDesc: "Check your sim registration information",
  ),
  const USSDCode(
    id: 2,
    ussdCode: "*100#",
    ussdDesc: "Check your Account Balance",
  ),
  const USSDCode(
    id: 3,
    ussdCode: "#888#",
    ussdDesc: "Self Help",
  ),
  const USSDCode(
    id: 4,
    ussdCode: "#170#",
    ussdDesc: "Buy data packages",
  ),
  const USSDCode(
    id: 5,
    ussdCode: "#222#",
    ussdDesc: "GPRS & MMS Settings",
  ),
];