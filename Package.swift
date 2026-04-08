// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.3.4"
let repoURL = "https://github.com/555platform/555-rtc-ios-pod/releases/download/spm-test"

let rtc555SdkChecksum = "746d22a66773d3b9058924fdefa80eafb09ddf24bd3208f339a24e1476f02cfa"

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
            checksum: "6bee5e38eee4328f600dba34153905ec2f353d77ece170d66fa7517b36d74267"
        ),
        .binaryTarget(
            name: "cxxreactBinary",
            url: "\(repoURL)/cxxreact.xcframework.zip",
            checksum: "e85e3fabc4309e2e2774241c1c15467e8c7198f8448e666c0d148e2d223ff323"
        ),
        .binaryTarget(
            name: "DoubleConversionBinary",
            url: "\(repoURL)/DoubleConversion.xcframework.zip",
            checksum: "34b70227bc667eeb635c844d5816d9074ca92c77d6a9d9a0fbfda16dc2a66967"
        ),
        .binaryTarget(
            name: "FBReactNativeSpecBinary",
            url: "\(repoURL)/FBReactNativeSpec.xcframework.zip",
            checksum: "03e07f213b1ba2f996d8b8c03bbeb71ae98ba2aaeff74b70ded9c2e152097fff"
        ),
        .binaryTarget(
            name: "follyBinary",
            url: "\(repoURL)/folly.xcframework.zip",
            checksum: "8767d3430c915068adddff5a39eb7976fd9bfe5db7d30dcd3581e841b40b6912"
        ),
        .binaryTarget(
            name: "glogBinary",
            url: "\(repoURL)/glog.xcframework.zip",
            checksum: "f98c4c5cdced44a2bb6d310fd23918a2b91ee9c613bae7bbae3de7482360d046"
        ),
        .binaryTarget(
            name: "jsiBinary",
            url: "\(repoURL)/jsi.xcframework.zip",
            checksum: "1d054dbf285b18a74466852fcd21fa32c22152039226a88ea62c5ec318066868"
        ),
        .binaryTarget(
            name: "jsinspectorBinary",
            url: "\(repoURL)/jsinspector.xcframework.zip",
            checksum: "71fd9d46404ea39d42387e2c2d0244f02bb37fe3a84cc046f79d38c92c4c87cf"
        ),
        .binaryTarget(
            name: "jsireactBinary",
            url: "\(repoURL)/jsireact.xcframework.zip",
            checksum: "0519712f0909cfa7f31f19e97b44611821140296b2f201f03f76116de1feefa8"
        ),
        .binaryTarget(
            name: "RCTAnimationBinary",
            url: "\(repoURL)/RCTAnimation.xcframework.zip",
            checksum: "53b9178a55b5fd8708ab24779327304fa9a889348f9e002e003805732823a765"
        ),
        .binaryTarget(
            name: "RCTBlobBinary",
            url: "\(repoURL)/RCTBlob.xcframework.zip",
            checksum: "ed227703d54322d4cd262737bebdc69acf5cde4c1ca718d86aeb25c7af1aa96b"
        ),
        .binaryTarget(
            name: "RCTImageBinary",
            url: "\(repoURL)/RCTImage.xcframework.zip",
            checksum: "dc6fc18ec13cedcdf8da8867a65f6c24a87fb9925c9b3ece4129493cd2045f83"
        ),
        .binaryTarget(
            name: "RCTLinkingBinary",
            url: "\(repoURL)/RCTLinking.xcframework.zip",
            checksum: "a032f397ea3f663b8d86bd770875b41f93ba208e2e51ccb1889548863242700f"
        ),
        .binaryTarget(
            name: "RCTNetworkBinary",
            url: "\(repoURL)/RCTNetwork.xcframework.zip",
            checksum: "9d4e080a73ffd0f2c0b3878696cc23ec411b91295656e5e57da0479d190c13e3"
        ),
        .binaryTarget(
            name: "RCTSettingsBinary",
            url: "\(repoURL)/RCTSettings.xcframework.zip",
            checksum: "03698920744cb63a6f97cae339d95daabde56d10c55f17e5e71abf190313fc48"
        ),
        .binaryTarget(
            name: "RCTTextBinary",
            url: "\(repoURL)/RCTText.xcframework.zip",
            checksum: "c957ef3d4fac41bd88983843afe98705a4a277628a4eb3d5d9c76d4d32490dd8"
        ),
        .binaryTarget(
            name: "RCTTypeSafetyBinary",
            url: "\(repoURL)/RCTTypeSafety.xcframework.zip",
            checksum: "94b6decc5a39066b1854cc47bf8cbba0d9050dfeee2a98994c7cd360902ee99a"
        ),
        .binaryTarget(
            name: "RCTVibrationBinary",
            url: "\(repoURL)/RCTVibration.xcframework.zip",
            checksum: "47fec062d088a4c89b375fa0854056b00cf20ab6aa975ca62cec536e41a370a1"
        ),
        .binaryTarget(
            name: "react_native_background_timerBinary",
            url: "\(repoURL)/react_native_background_timer.xcframework.zip",
            checksum: "953c5daf27cc098019ee0c8da3446c3d849ef5d9068285b3da2a8589c0a3067e"
        ),
        .binaryTarget(
            name: "react_native_netinfoBinary",
            url: "\(repoURL)/react_native_netinfo.xcframework.zip",
            checksum: "fc890c15258cb7840a5aaff17795081ad9a8488f88c354c2aad27a428d89fdda"
        ),
        .binaryTarget(
            name: "react_native_webrtcBinary",
            url: "\(repoURL)/react_native_webrtc.xcframework.zip",
            checksum: "4ef30fcd8e4b0293e52d2b303ecf289b39a40fc2af5492ca2d33d53ec2126748"
        ),
        .binaryTarget(
            name: "ReactBinary",
            url: "\(repoURL)/React.xcframework.zip",
            checksum: "7f1a352270d0e56e0ec35f7968baa0de070172954f61aac5fd14c6c105618b96"
        ),
        .binaryTarget(
            name: "ReactCommonBinary",
            url: "\(repoURL)/ReactCommon.xcframework.zip",
            checksum: "b27f2ec900dbd703894e3745d99bf5011c8e46cf124b68aa26f36a02fbc1d723"
        ),
        .binaryTarget(
            name: "ReactNativeIncallManagerBinary",
            url: "\(repoURL)/ReactNativeIncallManager.xcframework.zip",
            checksum: "80314ff6c50ffbbfe0a06bd806e1cf93fca61edb261c13724d0a219492ce87f3"
        ),
        .binaryTarget(
            name: "RNCAsyncStorageBinary",
            url: "\(repoURL)/RNCAsyncStorage.xcframework.zip",
            checksum: "7c8e9aa212c5eb2798ee2d4093b77bca81247e2f4148363f179b06935951ac29"
        ),
        .binaryTarget(
            name: "RNDeviceInfoBinary",
            url: "\(repoURL)/RNDeviceInfo.xcframework.zip",
            checksum: "89ca083c24a6bb54270a3fc1999877aee602150b627c8a53ca51e4b70ac05fd4"
        ),
        .binaryTarget(
            name: "RNSoundBinary",
            url: "\(repoURL)/RNSound.xcframework.zip",
            checksum: "9d20cdf0f86bf9f2fb32f7180985832fb7f7a5faf405cc24c8f82096dead8aff"
        ),
        .binaryTarget(
            name: "WebRTCBinary",
            url: "\(repoURL)/WebRTC.xcframework.zip",
            checksum: "ee3e97ebda9ab1a17f738730594ceb6b3140016d9e518d6be96e005f38514c60"
        ),
        .binaryTarget(
            name: "yogaBinary",
            url: "\(repoURL)/yoga.xcframework.zip",
            checksum: "63a18aea49bd55c89b858d3e13284586d61cfa35e78222506190abc59c2867f3"
        ),
    ]
)
