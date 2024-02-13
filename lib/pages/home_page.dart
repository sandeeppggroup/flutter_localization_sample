import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:localization_sample/localization/locales.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FlutterLocalization _flutterLocalization;

  late String _currentLocale;
  @override
  void initState() {
    super.initState();
    _flutterLocalization = FlutterLocalization.instance;
    _currentLocale = _flutterLocalization.currentLocale!.languageCode;
    print(_currentLocale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select your language : ',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          DropdownButton(
              value: _currentLocale,
              items: const [
                DropdownMenuItem(
                  value: 'en',
                  child: Text('English'),
                ),
                DropdownMenuItem(
                  value: 'ml',
                  child: Text('Malayalam'),
                ),
                DropdownMenuItem(
                  value: 'tl',
                  child: Text('Tamil'),
                ),
                DropdownMenuItem(
                  value: 'hnd',
                  child: Text('Hindi'),
                ),
                DropdownMenuItem(
                  value: 'knd',
                  child: Text('Kannada'),
                ),
              ],
              onChanged: (value) {
                _setLocale(value);
              }),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Divider(),
            Text(
              context.formatString(LocaleData.title, ['Sandeep']),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Text(LocaleData.body.getString(context),
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500)),
            ),
          ],
        ),
      ),
    );
  }

  void _setLocale(String? value) {
    if (value == null) {
      return;
    }
    if (value == 'en') {
      _flutterLocalization.translate('en');
    } else if (value == 'ml') {
      _flutterLocalization.translate('ml');
    } else if (value == 'tl') {
      _flutterLocalization.translate('tl');
    } else if (value == 'hnd') {
      _flutterLocalization.translate('hnd');
    } else if (value == 'knd') {
      _flutterLocalization.translate('knd');
    } else {
      return;
    }

    setState(() {
      _currentLocale = value;
    });
  }
}
