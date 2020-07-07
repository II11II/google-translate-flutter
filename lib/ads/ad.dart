import 'package:firebase_admob/firebase_admob.dart';
import 'package:google_translate/ads/ad_manager.dart';

class Ad {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    nonPersonalizedAds: true,
    keywords: <String>['any'],
  );

  BannerAd bannerAd;
  InterstitialAd interstitialAd;

  BannerAd createBannerAd() {
    return BannerAd(
//        adUnitId: AdManager.bannerAdUnitId,
        adUnitId: BannerAd.testAdUnitId,
        size: AdSize.smartBanner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
//          if (event == MobileAdEvent.failedToLoad) {
//            bannerAd..load();
//          } else if (event == MobileAdEvent.closed) {
//            bannerAd = createBannerAd()..load();
//          }
        });
  }

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
//        adUnitId: AdManager.interstitialAdUnitId,
        adUnitId: InterstitialAd.testAdUnitId,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
//          if (event == MobileAdEvent.failedToLoad) {
//            interstitialAd..load();
//          } else if (event == MobileAdEvent.closed) {
//            interstitialAd = createInterstitialAd()..load();
//          }
        });
  }

  void initState() {
//    FirebaseAdMob.instance.initialize(appId: AdManager.appId);
    FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);

  }

  void initInterstitialAd() {
    interstitialAd = createInterstitialAd()
      ..load()
      ..show();
  }

  void initBanner() {
    bannerAd = createBannerAd()
      ..load()
      ..show();
  }

  void dispose() {
    bannerAd?.dispose();
    interstitialAd?.dispose();
  }
}
