
import 'package:firebase_admob/firebase_admob.dart';
import 'package:google_translate/ads/ad_manager.dart';





class Ad {

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    nonPersonalizedAds: true,
    keywords: <String>[],
  );

  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;

  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId:AdManager.bannerAdUnitId,
        size: AdSize.banner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("BannerAd $event");
        });
  }

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
        adUnitId: AdManager.interstitialAdUnitId,

        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("IntersttialAd $event");
        });
  }
  void initState() {
    FirebaseAdMob.instance.initialize(appId: AdManager.appId);
  }
  void initInterstitialAd(){
    _interstitialAd = createInterstitialAd()
      ..load()
      ..show();
  }
void initBanner(){
  _bannerAd = createBannerAd()
    ..load()
    ..show();
}


  void dispose() {
    _bannerAd.dispose();
    _interstitialAd.dispose();
  }


}