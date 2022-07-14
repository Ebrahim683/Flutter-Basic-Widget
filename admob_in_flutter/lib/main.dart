import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  InterstitialAd? myInterstitial;
  BannerAd? myBanner;
  RewardedVideoAd rewardedVideoAd = RewardedVideoAd.instance;
  var _goldCoins = 0;

  //Setup Banner ads
  Future getBannerAds(MobileAdTargetingInfo targetingInfo) async {
    myBanner = await BannerAd(
      // Replace the testAdUnitId with an ad unit id from the AdMob dash.
      // https://developers.google.com/admob/android/test-ads
      // https://developers.google.com/admob/ios/test-ads
      adUnitId: BannerAd.testAdUnitId,
      size: AdSize.smartBanner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd event is $event");
      },
    );
    myBanner?.load();
  }

  //Show Banner ads
  showBannerAds() {
    myBanner?.show(
      anchorOffset: 0.0,
      horizontalCenterOffset: 5.0,
      anchorType: AnchorType.bottom,
    );
  }

// Setup Interstitial ads
  Future getInterstitialAds(MobileAdTargetingInfo targetingInfo) async {
    myInterstitial = InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event is $event");
      },
    );
    myInterstitial?.load();
  }

// Show Interstitial ads
  showInterstitialAds() {
    myInterstitial?.show(
      anchorType: AnchorType.bottom,
      anchorOffset: 0.0,
      horizontalCenterOffset: 0.0,
    );
  }

  //Show Rewarded ads
  showRewardedAds() {
    rewardedVideoAd.show();
  }

  @override
  void initState() {
    super.initState();
    MobileAdTargetingInfo targetingInfo = const MobileAdTargetingInfo(
      keywords: <String>['flutterio', 'beautiful apps'],
      contentUrl: 'https://flutter.io',
      childDirected: false,
    );
    getBannerAds(targetingInfo);
    getInterstitialAds(targetingInfo);
    rewardedVideoAd.load(
        adUnitId: "ca-app-pub-3940256099942544/5224354917",
        targetingInfo: targetingInfo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  showInterstitialAds();
                });
              },
              child: const Text('Show Interstitial ads'),
            ),
            const SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  showBannerAds();
                });
              },
              child: const Text('Show Banner ads'),
            ),
            const SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  showRewardedAds();
                });
              },
              child: const Text('Show Rewarded ads'),
            ),
          ],
        ),
      ),
    );
  }
}
