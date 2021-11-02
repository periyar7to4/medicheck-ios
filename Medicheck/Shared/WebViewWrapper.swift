import SwiftUI

struct WebViewWrapper: View {
    let url: URL

    var body: some View {
        WebView(url: url)
            .ignoresSafeArea(.all, edges: .bottom)
            .navigationBarTitle("")
//            .navigationBarHidden(true)
    }
}

struct WebViewWrapper_Previews: PreviewProvider {
    static var previews: some View {
        WebViewWrapper(url: URL(string: "https://www.google.com")!)
    }
}
