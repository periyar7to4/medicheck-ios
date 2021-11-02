import WebKit
import SwiftUI

// Reference: https://medium.com/@mdyamin/swiftui-mastering-webview-5790e686833e

struct WebView: UIViewRepresentable {
    let url: URL
    private let activityIndicator = UIActivityIndicatorView()

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView(frame: UIScreen.main.bounds)
        webView.allowsBackForwardNavigationGestures = true
        webView.scrollView.isScrollEnabled = true
        webView.scrollView.showsVerticalScrollIndicator = false
        let activityIndicatorSize = CGSize(width: 20, height: 20)
        let mainBounds = UIScreen.main.bounds
        let origin = CGPoint(x: mainBounds.midX - activityIndicatorSize.width / 2, y: mainBounds.midX - activityIndicatorSize.height / 2)
        activityIndicator.frame = CGRect(origin: origin, size: activityIndicatorSize)
        webView.addSubview(activityIndicator)
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: url))
    }
}
