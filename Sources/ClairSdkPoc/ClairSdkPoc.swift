import SwiftUI

public struct Clair: View {
    @State private var isSdkWebviewPresented = false

    public init(
        partnerID: String, userID: String, location: String, type: String
    ) {
        print("partnerID: \(partnerID)", "userID: \(userID)", "location: \(location)", "type: \(type)")
    }

    public var body: some View {
        ZStack {
            Button(
                action: {
                    isSdkWebviewPresented = true
                },
                label: {
                    Text("Clair")
                        .font(.system(size: 17, weight: .bold))
                        .padding()
                }
            )
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(.green)
            .cornerRadius(16)
        }.fullScreenCover(
            isPresented: $isSdkWebviewPresented,
            content: {
                ZStack {
                    Webview()
                }
            }
        )
    }
}

#Preview {
    Clair(
        partnerID: "1234", userID: "1234", location: "home", type: "template_1")
}
