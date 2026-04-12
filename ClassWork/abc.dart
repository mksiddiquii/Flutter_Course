void main() {
  Map<String, dynamic> apiPayload = {
    "id": 1,
    "agencyType": "User",
    "turnOver": 120909,
    "previousTurnOver": 208191,
    "invesMent": 300199,
  };

  // Add status AFTER map is created
  apiPayload["status"] = checkSalesStatus(
    apiPayload["turnOver"],
    apiPayload["previousTurnOver"],
    apiPayload["invesMent"],
  );

  print(apiPayload);
}

String checkSalesStatus(int turnOver, int previousTurnOver, int investment) {
  if (turnOver > previousTurnOver) {
    return "Growth";
  } else if (turnOver < previousTurnOver) {
    return "Non Stable";
  } else {
    return "Stable";
  }
}