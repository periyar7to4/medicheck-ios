import WebKit
import SwiftUI

// Reference: https://medium.com/@mdyamin/swiftui-mastering-webview-5790e686833e

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView(frame: UIScreen.main.bounds)
        webView.allowsBackForwardNavigationGestures = true
        webView.scrollView.isScrollEnabled = true
        webView.scrollView.showsVerticalScrollIndicator = false
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: url))
    }
}
