import 'package:firebase_admob/firebase_admob.dart';
import 'package:google_translate/ads/ad_manager.dart';

class Ad {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    nonPersonalizedAds: true,
    keywords: <String>['any'],
  );

 static BannerAd bannerAd;
 static InterstitialAd interstitialAd;

 static BannerAd createBannerAd() {
    return BannerAd(
//        adUnitId: AdManager.bannerAdUnitId,
        adUnitId: BannerAd.testAdUnitId,
        size: AdSize.banner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
//          if (event == MobileAdEvent.failedToLoad) {
//            bannerAd..load();
//          } else if (event == MobileAdEvent.closed) {
//            bannerAd = createBannerAd()..load();
//          }
        });
  }
  static void hideBannerAd() async {
    await bannerAd.dispose();
    bannerAd = null;
  }
 static InterstitialAd createInterstitialAd() {
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

 static void initState() {
//    FirebaseAdMob.instance.initialize(appId: AdManager.appId);
    FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);

  }

 static void initInterstitialAd() {
    interstitialAd = createInterstitialAd()
      ..load()
      ..show();
  }

 static void initBanner() {
    bannerAd = createBannerAd()
      ..load()
      ..show();
  }

  static dispose() async{
 await   bannerAd?.dispose();
 bannerAd=null;
   await interstitialAd?.dispose();
 interstitialAd=null;

   }
}
