class USSDCode {
  final String ussdCode;
  final String ussdName;
  final String ussdDesc;

  const USSDCode({
    required this.ussdCode,
    required this.ussdName,
    required this.ussdDesc,
  });
}

List<USSDCode> preUssdList = [
  const USSDCode(
    ussdCode: "*100#",
    ussdName: "#100#",
    ussdDesc: "Check your Account Balance",
  ),
  const USSDCode(
    ussdCode: "#132#",
    ussdName: "#132#",
    ussdDesc: "Check your sim registration information",
  ),
  const USSDCode(
    ussdCode: "#170#",
    ussdName: "#170#",
    ussdDesc: "Check your data balance and active data packages",
  ),
  const USSDCode(
    ussdCode: "#247#",
    ussdName: "#247#",
    ussdDesc: "Smart Loan",
  ),
  const USSDCode(
    ussdCode: "*102*",
    ussdName: "*102*PIN#",
    ussdDesc: "Self Help",
  ),
  const USSDCode(
    ussdCode: "#888#",
    ussdName: "#888#",
    ussdDesc: "Self Help",
  ),
  const USSDCode(
    ussdCode: "#222#",
    ussdName: "#222#",
    ussdDesc: "GPRS & MMS Settings",
  ),
];

List<USSDCode> postUssdList = [
  const USSDCode(
    ussdCode: "#1456#",
    ussdName: "#888#",
    ussdDesc: "Self Care Billing Information Portal",
  ),
  const USSDCode(
    ussdCode: "#557#",
    ussdName: "#888#",
    ussdDesc: "Loyalty Self care",
  ),
  const USSDCode(
    ussdCode: "#556#",
    ussdName: "#888#",
    ussdDesc: "Club Points Self Care Portal",
  ),
  const USSDCode(
    ussdCode: "#138#",
    ussdName: "#888#",
    ussdDesc: "Mobitel Store Locator",
  ),
  const USSDCode(
    ussdCode: "#151#",
    ussdName: "#888#",
    ussdDesc: "View Cash Bonanza winning chances",
  ),
];