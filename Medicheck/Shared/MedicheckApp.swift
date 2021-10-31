import SwiftUI

@main
struct MedicheckApp: App {
    var body: some Scene {
        WindowGroup {
            WebView(url: URL(string: "https://www.google.com")!)
                .ignoresSafeArea(.all, edges: .bottom)
        }
    }
}
