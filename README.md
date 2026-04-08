# Rtc555Sdk

Real-time communication SDK for iOS.

[![Platform](https://img.shields.io/badge/platform-iOS-blue.svg)](https://developer.apple.com/ios/)
[![Swift](https://img.shields.io/badge/Swift-4.2+-orange.svg)](https://swift.org)
[![License](https://img.shields.io/badge/license-proprietary-lightgrey.svg)](LICENSE)

## Requirements

| Requirement | Minimum Version |
|-------------|----------------|
| iOS         | 12.0+ (CocoaPods) / 13.0+ (SPM) |
| Xcode       | 10.2+          |

## Installation

### Option A — CocoaPods

1. If you haven't already, install [CocoaPods](https://cocoapods.org):

   ```bash
   gem install cocoapods
   ```

2. Add `Rtc555Sdk` to your `Podfile`:

   ```ruby
   target 'MyApp' do
     use_frameworks!
     pod 'Rtc555Sdk', '~> 1.3.4'
   end
   ```

3. Run install:

   ```bash
   pod install
   ```

4. Open the generated `.xcworkspace` file and build your project.

### Option B — Swift Package Manager (SPM)

#### Using Xcode

1. Open your project in Xcode.
2. Go to **File → Add Package Dependencies…**
3. In the search bar, enter the repository URL:

   ```
   https://github.com/555platform/555-rtc-ios-pod
   ```

4. Under **Dependency Rule**, select **Exact Version** and enter:

   ```
   1.3.4
   ```

5. Click **Add Package** and select the `Rtc555Sdk` library target.

#### Using `Package.swift`

Add the following to your `Package.swift` dependencies:

```swift
dependencies: [
    .package(url: "https://github.com/555platform/555-rtc-ios-pod", exact: "1.3.4")
]
```

Then add `"Rtc555Sdk"` to the `dependencies` of the target that needs it:

```swift
.target(
    name: "MyApp",
    dependencies: [
        .product(name: "Rtc555Sdk", package: "555-rtc-ios-pod")
    ]
)
```

### Migrating from CocoaPods to SPM

If you are currently using CocoaPods and want to switch to SPM, follow these steps:

1. Remove or comment out the `pod 'Rtc555Sdk'` line from your `Podfile`.
2. Run `pod install` to remove the pod from your workspace, or run `pod deintegrate` to fully remove CocoaPods from your project.
3. Clear caches and derived data:
   ```bash
   rm -rf ~/Library/Caches/CocoaPods
   rm -rf ~/Library/Developer/Xcode/DerivedData
   ```
4. Close and reopen your project in Xcode.
5. Follow **Option B** above to add the SDK via SPM.

## Usage

```swift
import Rtc555Sdk
```

## License

See [LICENSE](LICENSE) for details.
