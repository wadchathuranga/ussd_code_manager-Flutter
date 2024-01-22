class USSDCode {
  final String ussdCode;
  final String ussdName;
  final String ussdDesc;
  final bool isDirect;

  const USSDCode({
    required this.ussdCode,
    required this.ussdName,
    required this.ussdDesc,
    required this.isDirect,
  });
}

List<USSDCode> preUssdList = [
  const USSDCode(
    ussdCode: "*100#",
    ussdName: "*100#",
    ussdDesc: "Check your Account Balance",
    isDirect: true,
  ),
  const USSDCode(
    ussdCode: "#132#",
    ussdName: "#132#",
    ussdDesc: "Check your sim registration information",
    isDirect: true,
  ),
  const USSDCode(
    ussdCode: "#170#",
    ussdName: "#170#",
    ussdDesc: "Check your data balance or active data packages",
    isDirect: true,
  ),
  const USSDCode(
    ussdCode: "#247#",
    ussdName: "#247#",
    ussdDesc: "Smart Loan",
    isDirect: true,
  ),
  const USSDCode(
    ussdCode: "*102*",
    ussdName: "*102*PIN#",
    ussdDesc: "Recharge Your Mobile",
    isDirect: false,
  ),
  const USSDCode(
    ussdCode: "#888#",
    ussdName: "#888#",
    ussdDesc: "Self Help",
    isDirect: true,
  ),
  const USSDCode(
    ussdCode: "#222#",
    ussdName: "#222#",
    ussdDesc: "GPRS & MMS Settings",
    isDirect: true,
  ),
];

List<USSDCode> postUssdList = [
  const USSDCode(
    ussdCode: "#1456#",
    ussdName: "#1456#",
    ussdDesc: "Self Care Billing Information Portal",
    isDirect: true,
  ),
  const USSDCode(
    ussdCode: "#557#",
    ussdName: "#557#",
    ussdDesc: "Loyalty Self care",
    isDirect: true,
  ),
  const USSDCode(
    ussdCode: "#556#",
    ussdName: "#556#",
    ussdDesc: "Club Points Self Care Portal",
    isDirect: true,
  ),
  const USSDCode(
    ussdCode: "#138#",
    ussdName: "#138#",
    ussdDesc: "Mobitel Store Locator",
    isDirect: true,
  ),
  const USSDCode(
    ussdCode: "#151#",
    ussdName: "#151#",
    ussdDesc: "View Cash Bonanza winning chances",
    isDirect: true,
  ),
];