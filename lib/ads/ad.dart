//
//import 'package:firebase_admob/firebase_admob.dart';
//
//const String testDevice = 'ca-app-pub-3823537053576178~4633880080';
//
//
//
//class Ad {
//  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
////    testDevices: testDevice != null ? <String>[testDevice] : null,
//    nonPersonalizedAds: true,
//    keywords: <String>['Game', 'Mario'],
//  );
//
//  BannerAd _bannerAd;
//  InterstitialAd _interstitialAd;
//
//  BannerAd createBannerAd() {
//    return BannerAd(
//        adUnitId: 'ca-app-pub-3823537053576178/2716602681',
//        size: AdSize.banner,
//        targetingInfo: targetingInfo,
//        listener: (MobileAdEvent event) {
//          print("BannerAd $event");
//        });
//  }
//
//  InterstitialAd createInterstitialAd() {
//    return InterstitialAd(
//        adUnitId: InterstitialAd.testAdUnitId,
//
//        targetingInfo: targetingInfo,
//        listener: (MobileAdEvent event) {
//          print("IntersttialAd $event");
//        });
//  }
//
//  void initState() {
//    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-3823537053576178~4633880080');
//    _bannerAd = createBannerAd()
//      ..load()
//      ..show();
//
//  }
//
//
//  void dispose() {
//    _bannerAd.dispose();
//    _interstitialAd.dispose();
//  }
//
//
//}