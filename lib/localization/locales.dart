import 'package:flutter_localization/flutter_localization.dart';

const List<MapLocale> LOCALES = [
  MapLocale('en', LocaleData.EN),
  MapLocale('ml', LocaleData.ML),
  MapLocale('tl', LocaleData.TL),
  MapLocale('hnd', LocaleData.HND),
  MapLocale('knd', LocaleData.KND),
];
mixin LocaleData {
  static const String title = 'title';
  static const String body = 'body';

  static const Map<String, dynamic> EN = {
    title: 'welcome to towner %a',
    body: 'The app for streamlined taxi management'
  };

  static const Map<String, dynamic> ML = {
    title: 'ടൌണറിലേക്ക് സ്വാഗതം %a',
    body: 'കാര്യക്ഷമമായ ടാക്സി മാനേജ്മെൻ്റിനുള്ള ആപ്പ്'
  };

  static const Map<String, dynamic> TL = {
    title: 'நகரவாசிக்கு வரவேற்கிறோம் %a',
    body: 'நெறிப்படுத்தப்பட்ட டாக்ஸி நிர்வாகத்திற்கான பயன்பாடு'
  };

  static const Map<String, dynamic> HND = {
    title: 'टाउनर में आपका स्वागत है %a',
    body: 'सुव्यवस्थित टैक्सी प्रबंधन के लिए ऐप। '
  };

  static const Map<String, dynamic> KND = {
    title: 'ಪಟ್ಟಣದವರಿಗೆ ಸ್ವಾಗತ %a',
    body: 'ಸುವ್ಯವಸ್ಥಿತ ಟ್ಯಾಕ್ಸಿ ನಿರ್ವಹಣೆಗಾಗಿ ಅಪ್ಲಿಕೇಶನ್'
  };
}
