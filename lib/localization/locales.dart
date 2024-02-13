import 'package:flutter_localization/flutter_localization.dart';

const List<MapLocale> LOCALES = [
  MapLocale('en', LocaleData.EN),
  MapLocale('ml', LocaleData.ML),
  MapLocale('tl', LocaleData.TL),
];
mixin LocaleData {
  static const String title = 'title';
  static const String body = 'body';

  static const Map<String, dynamic> EN = {
    title: 'Localization',
    body: 'Welcome to this localized Flutter aplication %a'
  };

  static const Map<String, dynamic> ML = {
    title: 'പ്രാദേശികവൽക്കരണം',
    body: 'ഈ പ്രാദേശികവൽക്കരിച്ച ഫ്ലട്ടർ ആപ്ലിക്കേഷനിലേക്ക് സ്വാഗതം %a'
  };

  static const Map<String, dynamic> TL = {
    title: 'உள்ளூர்மயமாக்கல்',
    body: 'இந்த உள்ளூர்மயமாக்கப்பட்ட Flutter பயன்பாட்டிற்கு வரவேற்கிறோம் %a'
  };
}
