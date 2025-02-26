# Example iOS SDK

This repo contains an example Swift package that can be used to integrate the Clair SDK into your iOS application.

## Requirements

- iOS 16.0+
- Swift 6.0+
- Xcode 14.0+

## Installation

### Swift Package Manager

To integrate the Clair SDK into your project using Swift Package Manager, follow these steps:

1. Open your project in Xcode.
2. Go to `File` > `Add Packages Dependencies...`.
3. Enter the repository URL: `https://github.com/your-repo/ClairSdkPoc.git`.
4. Click `Add Package`.

## Usage

### Importing the SDK

In the file where you want to use the Clair SDK, import the module:

```swift
import SwiftUI
import ClairSdkPoc

struct ContentView: View {
    var body: some View {
        Clair(
            partnerID: "your_partner_id",
            userID: "your_user_id",
            location: "your_location",
            type: "your_type"
        )
    }
}
```

## License
This project is licensed under the MIT License. See the LICENSE file for more information.
