// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.3.4"
let repoURL = "https://github.com/555platform/555-rtc-ios-pod/releases/download/spm-test"

// IMPORTANT: Update this checksum each time you upload a new Rtc555Sdk.zip release.
// Generate it by running: swift package compute-checksum Rtc555Sdk.zip
let rtc555SdkChecksum = "c2f60af53248f20ad95dd9f2538112ca403cc848fb4f5e4bea5dcedbc0cb1325"

let package = Package(
    name: "Rtc555Sdk",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Rtc555Sdk",
            targets: ["Rtc555SdkTargets"]
        ),
    ],
    targets: [
        // Umbrella target that links all binary xcframeworks together
        .target(
            name: "Rtc555SdkTargets",
            dependencies: [
                "Rtc555SdkBinary",
                "CoreModulesBinary",
                "cxxreactBinary",
                "DoubleConversionBinary",
                "FBReactNativeSpecBinary",
                "follyBinary",
                "glogBinary",
                "jsiBinary",
                "jsinspectorBinary",
                "jsireactBinary",
                "RCTAnimationBinary",
                "RCTBlobBinary",
                "RCTImageBinary",
                "RCTLinkingBinary",
                "RCTNetworkBinary",
                "RCTSettingsBinary",
                "RCTTextBinary",
                "RCTTypeSafetyBinary",
                "RCTVibrationBinary",
                "react_native_background_timerBinary",
                "react_native_netinfoBinary",
                "react_native_webrtcBinary",
                "ReactBinary",
                "ReactCommonBinary",
                "ReactNativeIncallManagerBinary",
                "RNCAsyncStorageBinary",
                "RNDeviceInfoBinary",
                "RNSoundBinary",
                "WebRTCBinary",
                "yogaBinary",
            ],
            path: "Sources/Rtc555SdkTargets"
        ),

        // Binary targets — each xcframework is zipped individually and uploaded as a release asset
        .binaryTarget(
            name: "Rtc555SdkBinary",
            url: "\(repoURL)/Rtc555Sdk.xcframework.zip",
            checksum: rtc555SdkChecksum
        ),
        .binaryTarget(
            name: "CoreModulesBinary",
            url: "\(repoURL)/CoreModules.xcframework.zip",
            checksum: "d628f9938bc59946df39926a02d473b25fdadefcfb66cfbe6802f591537636ff"
        ),
        .binaryTarget(
            name: "cxxreactBinary",
            url: "\(repoURL)/cxxreact.xcframework.zip",
            checksum: "393056e4571a26324dfbb4254400a5ca4daa72e6866f672a54c755d776d51699"
        ),
        .binaryTarget(
            name: "DoubleConversionBinary",
            url: "\(repoURL)/DoubleConversion.xcframework.zip",
            checksum: "4daaa662c290f8e559492ae69b422c6e9100697a9cf178af1089ab003b59f726"
        ),
        .binaryTarget(
            name: "FBReactNativeSpecBinary",
            url: "\(repoURL)/FBReactNativeSpec.xcframework.zip",
            checksum: "4c2fd16136674340547f863d4af8331ce56afc5505ce6d907d4810b9288d3f36"
        ),
        .binaryTarget(
            name: "follyBinary",
            url: "\(repoURL)/folly.xcframework.zip",
            checksum: "058a8915113510374039437aee492e7653bfde0c7e9bb07b04443907b40744f6"
        ),
        .binaryTarget(
            name: "glogBinary",
            url: "\(repoURL)/glog.xcframework.zip",
            checksum: "7586531f6834ae45285f62acd77c40785a5ab2ddfdfc78b3fba1c06c7437be31"
        ),
        .binaryTarget(
            name: "jsiBinary",
            url: "\(repoURL)/jsi.xcframework.zip",
            checksum: "53d641da56f40f3c3987b0975069486b8ad8c35f8cf172d300054591c46d7266"
        ),
        .binaryTarget(
            name: "jsinspectorBinary",
            url: "\(repoURL)/jsinspector.xcframework.zip",
            checksum: "1f357829e073d07ce1bace14d5c033990ca4aee7c6ee7e82b286c6917f8934ea"
        ),
        .binaryTarget(
            name: "jsireactBinary",
            url: "\(repoURL)/jsireact.xcframework.zip",
            checksum: "91021050fb0056f7235371a8035c3c6899902f1818942bd7df80642080b5d308"
        ),
        .binaryTarget(
            name: "RCTAnimationBinary",
            url: "\(repoURL)/RCTAnimation.xcframework.zip",
            checksum: "55287c91ce1aa6b5d15a1afcd2c98f3304cfab118a3b386bdfd7fb8871efac4d"
        ),
        .binaryTarget(
            name: "RCTBlobBinary",
            url: "\(repoURL)/RCTBlob.xcframework.zip",
            checksum: "04e3b2136451c2b949f9711ca594dbc81c429db806bf141cb6e590b8f1fb74f2"
        ),
        .binaryTarget(
            name: "RCTImageBinary",
            url: "\(repoURL)/RCTImage.xcframework.zip",
            checksum: "bac10736c34bbcf8b8e9d1b52ebafc0b344334f971d526c77eff5b91b698db56"
        ),
        .binaryTarget(
            name: "RCTLinkingBinary",
            url: "\(repoURL)/RCTLinking.xcframework.zip",
            checksum: "a351ce541851cc5480e56fee1d84395a1461cddf15cf17dd773981059038d7ed"
        ),
        .binaryTarget(
            name: "RCTNetworkBinary",
            url: "\(repoURL)/RCTNetwork.xcframework.zip",
            checksum: "87eeb9a66d6e5f8fa93ede9b6af504648932852f8c373568df2d7be03e110762"
        ),
        .binaryTarget(
            name: "RCTSettingsBinary",
            url: "\(repoURL)/RCTSettings.xcframework.zip",
            checksum: "af13d48c9b2751bfb38a71be62756811d5856e8df9fa5bda17c07e43f888ccc1"
        ),
        .binaryTarget(
            name: "RCTTextBinary",
            url: "\(repoURL)/RCTText.xcframework.zip",
            checksum: "65e3b119608530772e8a1014ed4ee360df15395b691bef503efa43411c674490"
        ),
        .binaryTarget(
            name: "RCTTypeSafetyBinary",
            url: "\(repoURL)/RCTTypeSafety.xcframework.zip",
            checksum: "2eabea407c2d8896f6cd0b97915cd7a3c381c9505dbae0f99a0f78fc83045c0b"
        ),
        .binaryTarget(
            name: "RCTVibrationBinary",
            url: "\(repoURL)/RCTVibration.xcframework.zip",
            checksum: "83953c21d012113a3a437d2ff9a55d7db62daa64f23074d2ddaa7773251c8854"
        ),
        .binaryTarget(
            name: "react_native_background_timerBinary",
            url: "\(repoURL)/react_native_background_timer.xcframework.zip",
            checksum: "62d72c321b3d0e86ca35bbfa439bcbe4cbd7701d6aac8867588c86ddce8d4bb0"
        ),
        .binaryTarget(
            name: "react_native_netinfoBinary",
            url: "\(repoURL)/react_native_netinfo.xcframework.zip",
            checksum: "9ec52c368c8683b4a73b063e1a9ee19e87952f756d4018de3c85db0552d4c50b"
        ),
        .binaryTarget(
            name: "react_native_webrtcBinary",
            url: "\(repoURL)/react_native_webrtc.xcframework.zip",
            checksum: "07bb41cc276f17c520e6a300cd49a4ce572e4a6e3f2548c805dee86ab80a037c"
        ),
        .binaryTarget(
            name: "ReactBinary",
            url: "\(repoURL)/React.xcframework.zip",
            checksum: "31fa8c2a3b03597bb5bcddf525cb8e8e4e1a91d283760ae79fe58bf44f4d70fe"
        ),
        .binaryTarget(
            name: "ReactCommonBinary",
            url: "\(repoURL)/ReactCommon.xcframework.zip",
            checksum: "055e5d1b9623bcb53e536e9928f518c84f9c7aa0c99da400dbf8d8a5d400ad63"
        ),
        .binaryTarget(
            name: "ReactNativeIncallManagerBinary",
            url: "\(repoURL)/ReactNativeIncallManager.xcframework.zip",
            checksum: "d73393f279ad73f436238a96f8f8a15d1343c5aa29898221f8d985a0c7b89ab0"
        ),
        .binaryTarget(
            name: "RNCAsyncStorageBinary",
            url: "\(repoURL)/RNCAsyncStorage.xcframework.zip",
            checksum: "c66142e7cb68f95c4b25ea2d2b193065dc495c6257d9806522368eff5fa9a750"
        ),
        .binaryTarget(
            name: "RNDeviceInfoBinary",
            url: "\(repoURL)/RNDeviceInfo.xcframework.zip",
            checksum: "5c70cf7cee08807cd4d97af51a81b3cc00320b356dcc2bc17d967daf53324c30"
        ),
        .binaryTarget(
            name: "RNSoundBinary",
            url: "\(repoURL)/RNSound.xcframework.zip",
            checksum: "e1dc54bb31ee072981f7571dd286be9ba524c75ae467ef498f49f32547baf379"
        ),
        .binaryTarget(
            name: "WebRTCBinary",
            url: "\(repoURL)/WebRTC.xcframework.zip",
            checksum: "0a05374d431fa96a1189135310e9ce0551c011f8431a48e52e0fb539ead9d061"
        ),
        .binaryTarget(
            name: "yogaBinary",
            url: "\(repoURL)/yoga.xcframework.zip",
            checksum: "f5b9220e1d547b68932d991258653f5a666a087ce249717deb38d79259bb5ae5"
        ),
    ]
)
