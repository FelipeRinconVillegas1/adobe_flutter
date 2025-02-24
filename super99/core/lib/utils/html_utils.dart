import 'package:html/parser.dart';

String parseHtmlString(String htmlString) {
  if (htmlString.isEmpty) {
    return "";
  }
  final document = parse(htmlString);
  final String? parsedString = parse(document.body?.text).documentElement?.text;
  if (parsedString != null) {
    return parsedString;
  } else {
    return "";
  }
}
