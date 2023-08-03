final Uri vk = Uri.parse('https://vk.com/lilykras');
final Uri tg = Uri.parse('https://t.me/lilykras');
final Uri mail = Uri(
  scheme: 'mailto',
  path: 'krasnogorova0304@mail.ru',
  query: encodeQueryParameters(<String, String>{
    'subject': 'Example Subject & Symbols are allowed!',
    'body': 'AAA'
  }),
);
final Uri shop = Uri.parse('https://www.apple.com/ru/app-store/');
final Uri conf = Uri.parse('https://yourstoryinteractive.com/en/privacy');
final Uri rules = Uri.parse('https://yourstoryinteractive.com/en/terms-of-use');

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map(
        (MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
      )
      .join('&');
}

const String mailAdress = 'krasnogorova0304@mail.ru';
