class USSDCode {
  final String ussdCode;
  final String ussdDesc;

  const USSDCode({
    required this.ussdCode,
    required this.ussdDesc,
  });
}

List<USSDCode> preUssdList = [
  const USSDCode(
    ussdCode: "#132#",
    ussdDesc: "Check your sim registration information",
  ),
  const USSDCode(
    ussdCode: "*100#",
    ussdDesc: "Check your Account Balance",
  ),
  const USSDCode(
    ussdCode: "#888#",
    ussdDesc: "Self Help",
  ),
  const USSDCode(
    ussdCode: "#170#",
    ussdDesc: "Buy data packages",
  ),
  const USSDCode(
    ussdCode: "#222#",
    ussdDesc: "GPRS & MMS Settings",
  ),
];

List<USSDCode> postUssdList = [
  const USSDCode(
    ussdCode: "#1456#",
    ussdDesc: "Self Care Billing Information Portal",
  ),
  const USSDCode(
    ussdCode: "#557#",
    ussdDesc: "Loyalty Self care",
  ),
  const USSDCode(
    ussdCode: "#556#",
    ussdDesc: "Club Points Self Care Portal",
  ),
  const USSDCode(
    ussdCode: "#138#",
    ussdDesc: "Mobitel Store Locator",
  ),
  const USSDCode(
    ussdCode: "#151#",
    ussdDesc: "View Cash Bonanza winning chances",
  ),
];