import 'dart:io';

class AdManager {

  static String get appId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3823537053576178~4633880080>";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3823537053576178~6821059727";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3823537053576178~4633880080";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3823537053576178~6821059727";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3823537053576178~4633880080>";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3823537053576178~6821059727";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3823537053576178~4633880080>";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3823537053576178~6821059727";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }
}