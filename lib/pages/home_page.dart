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
        title: Text(LocaleData.title.getString(context)),
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
              ],
              onChanged: (value) {
                _setLocale(value);
              }),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Text(context.formatString(LocaleData.body, ['Sandeep'])),
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
    } else {
      return;
    }

    setState(() {
      _currentLocale = value;
    });
  }
}
