const String apiUrl = "http://api.nytimes.com/svc/mostpopular/v2/mostviewed/";
const String apiKey = "snj7jqlnAHrVYuAfqPGzcAzrBqnehfPH";

String getApiKeyPath() {
  return "?api-key=$apiKey";
}

String getArticlePath(int period) {
  return "all-sections/${period.toString()}.json${getApiKeyPath()}";
}
